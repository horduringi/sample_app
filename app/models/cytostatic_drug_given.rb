class CytostaticDrugGiven < ActiveRecord::Base
  attr_accessible *column_names, :bone_marrow_transplantation_id, :anthracyclinesbolusinf, :anthracyclinesbolusinfnoyes, :cardioprotectants, :chemoorbonemarrow, :cytostaticdrugid, :dosequality, :journal_id, :totalcumulateddosemg, :totalcumulateddoseunits
  belongs_to :journal
  belongs_to :bone_marrow_transplantation
  def self.get_values(id)
    row = []
    j = CytostaticDrugGiven.find(id)
    row << j.attributes.values_at(*column_names)
  end
end
