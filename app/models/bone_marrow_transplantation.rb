class BoneMarrowTransplantation < ActiveRecord::Base
  attr_accessible *column_names, :cytostatic_drug_given_bone_marrow_attributes, :cytostatic_drug_given_attributes, :allogeneic, :autologous, :bodysurfaceconditioning, :cardioprotectants, :chemotherapy, :chemotherapydateofcompletion, :chemotherapydateofinitiation, :completiondate, :cumulativedose, :donor, :heightconditioning, :numberoffractions, :radiotherapyrecordscopied, :journal_id, :source, :startdate, :totalbodyirritation, :transplantationdate, :transplantationnumber, :weightconditioning
  belongs_to :journal
  has_many :cytostatic_drug_given
  has_many :cytostatic_drug_given_bone_marrow
  accepts_nested_attributes_for :cytostatic_drug_given, allow_destroy: true
  accepts_nested_attributes_for :cytostatic_drug_given_bone_marrow, allow_destroy: true

  def self.to_csv(options = {})
    CSV.generate(options) do |csv|
      columns = ["id", "journal_id", "transplantationdate_day", "transplantationdate_month", "transplantationdate_year",
        "autologous", "allogeneic", "donor", "source", "totalbodyirritation", "startdate_day", "startdate_month", "startdate_year",
        "completiondate_day", "completiondate_month", "completiondate_year", "radiotherapyrecordscopied", "chemotherapy",
        "chemotherapydateofinitiation_day", "chemotherapydateofinitiation_month", "chemotherapydateofinitiation_year", 
        "chemotherapydateofcompletion_day", "chemotherapydateofcompletion_month", "chemotherapydateofcompletion_year",
        "bodysurfaceconditioning", "weightconditioning", "heightconditioning", "cardioprotectants", "treatmentprotocol"
      ]
      csv << column_names
      all.each do |bone_marrow_transplantation|
        csv << bone_marrow_transplantation.attributes.values_at(*columns)
      end
    end
  end
end
