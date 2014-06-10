class BoneMarrowTransplantation < ActiveRecord::Base
  attr_accessible *column_names, :cytostatic_drug_given_bone_marrow_attributes, :cytostatic_drug_given_attributes, :allogeneic, :autologous, :bodysurfaceconditioning, :chemotherapy, :chemotherapydateofcompletion, :chemotherapydateofinitiation, :completiondate, :cumulativedose, :donor, :heightconditioning, :numberoffractions, :radiotherapyrecordscopied, :journal_id, :source, :startdate, :totalbodyirritation, :transplantationdate, :transplantationnumber, :weightconditioning
  belongs_to :journal, dependent: :destroy
  has_many :cytostatic_drug_given, dependent: :destroy
  has_many :cytostatic_drug_given_bone_marrow, dependent: :destroy
  accepts_nested_attributes_for :cytostatic_drug_given, allow_destroy: true
  accepts_nested_attributes_for :cytostatic_drug_given_bone_marrow, allow_destroy: true

  validates_presence_of :transplantationdate_day, :transplantationdate_month, :transplantationdate_year, :autologous, :allogeneic, :donor, :source, :totalbodyirritation,  :chemotherapy
  validates_presence_of :chemotherapydateofinitiation_day, :chemotherapydateofinitiation_month, :chemotherapydateofinitiation_year, :chemotherapydateofcompletion_day, :chemotherapydateofcompletion_month, :chemotherapydateofcompletion_year, :bodysurfaceconditioning, :weightconditioning, :heightconditioning, :if => :chemo_therapy?

  validates_inclusion_of :transplantationdate_day, :startdate_day, :completiondate_day, :chemotherapydateofinitiation_day, :chemotherapydateofcompletion_day, :in => Array(1..31) + [99] + [nil]
  validates_inclusion_of :transplantationdate_month, :startdate_month, :completiondate_month, :chemotherapydateofinitiation_month, :chemotherapydateofcompletion_month, :in => Array(1..12) + [99] + [nil]
  validates_inclusion_of :transplantationdate_year, :startdate_year, :completiondate_year, :chemotherapydateofinitiation_year, :chemotherapydateofcompletion_year, :in => Array(1970..2100) + [99] + [nil]

  def chemo_therapy?
    chemotherapy == 2
  end
  def self.to_csv(options = {})
    CSV.generate(options) do |csv|
      columns = ["id", "journal_id", "transplantationdate_day", "transplantationdate_month", "transplantationdate_year",
        "autologous", "allogeneic", "donor", "source", "totalbodyirritation", #"startdate_day", "startdate_month", "startdate_year",
        #"completiondate_day", "completiondate_month", "completiondate_year", "radiotherapyrecordscopied",
        "chemotherapy",
        "chemotherapydateofinitiation_day", "chemotherapydateofinitiation_month", "chemotherapydateofinitiation_year", 
        "chemotherapydateofcompletion_day", "chemotherapydateofcompletion_month", "chemotherapydateofcompletion_year",
        "bodysurfaceconditioning", "weightconditioning", "heightconditioning", "cardioprotectants", "treatmentprotocol"
      ]
      csv << column_names
      all.each do |bone_marrow_transplantation|
        csv << bone_marrow_transplantation.attributes.values_at(*columns).collect{|item| if item.class == String then item.squish() end}
      end
    end
  end
end
