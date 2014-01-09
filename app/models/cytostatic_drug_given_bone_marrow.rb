class CytostaticDrugGivenBoneMarrow < ActiveRecord::Base
  belongs_to :journal
  belongs_to :bone_marrow_transplantation
  attr_accessible *column_names, :anthracyclinesbolusinf, :anthracyclinesbolusinfnoyes, :cardioprotectants, :cytostaticdrugid, :dosequality, :totalcumulateddosemg, :totalcumulateddoseunits
  
  validates_presence_of :cytostaticdrugid, :totalcumulateddosemg, :dosequality
  validates_presence_of :anthracyclinesbolusinf, :if => :anthracycline?
  def anthracycline?
    [302, 304, 307, 310].include? cytostaticdrugid
  end
  def self.get_values(id)
    row = []
    j = CytostaticDrugGivenBoneMarrow.find(id)
    row << j.attributes.values_at(*column_names)
  end

  def self.to_csv(options = {})
    CSV.generate(options) do |csv|
      columns = ["id", "bone_marrow_transplantation_id", "cytostaticdrugid", "totalcumulateddosemg", "dosequality",
        "anthracyclinesbolusinf", "chemoorbonemarrow"]
      csv << column_names
      all.each do |cytostatic_drug_given_bone_marrows|
        csv << cytostatic_drug_given_bone_marrows.attributes.values_at(*columns)
      end
    end
  end
end
