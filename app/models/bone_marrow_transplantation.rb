class BoneMarrowTransplantation < ActiveRecord::Base
  attr_accessible *column_names, :cytostatic_drug_given_bone_marrow_attributes, :cytostatic_drug_given_attributes, :allogeneic, :autologous, :bodysurfaceconditioning, :cardioprotectants, :chemotherapy, :chemotherapydateofcompletion, :chemotherapydateofinitiation, :completiondate, :cumulativedose, :donor, :heightconditioning, :numberoffractions, :radiotherapyrecordscopied, :journal_id, :source, :startdate, :totalbodyirritation, :transplantationdate, :transplantationnumber, :weightconditioning
  belongs_to :journal
  has_many :cytostatic_drug_given
  has_many :cytostatic_drug_given_bone_marrow
  accepts_nested_attributes_for :cytostatic_drug_given, allow_destroy: true
  accepts_nested_attributes_for :cytostatic_drug_given_bone_marrow, allow_destroy: true
end
