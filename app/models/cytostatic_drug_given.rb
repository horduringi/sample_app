class CytostaticDrugGiven < ActiveRecord::Base
  attr_accessible :bone_marrow_transplantation_id, :anthracyclinesbolusinf, :anthracyclinesbolusinfnoyes, :cardioprotectants, :chemoorbonemarrow, :cytostaticdrugid, :dosequality, :journal_id, :totalcumulateddosemg, :totalcumulateddoseunits
  belongs_to :journal
  belongs_to :bone_marrow_transplantation
end
