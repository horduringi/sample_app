class CytostaticDrugGivenBoneMarrow < ActiveRecord::Base
  belongs_to :journal
  belongs_to :bone_marrow_transplantation
  attr_accessible *column_names, :anthracyclinesbolusinf, :anthracyclinesbolusinfnoyes, :cardioprotectants, :cytostaticdrugid, :dosequality, :totalcumulateddosemg, :totalcumulateddoseunits
  def self.get_values(id)
    row = []
    j = CytostaticDrugGivenBoneMarrow.find(id)
    row << j.attributes.values_at(*column_names)
  end
end
