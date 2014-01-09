class CytostaticDrugGiven < ActiveRecord::Base
  attr_accessible *column_names, :bone_marrow_transplantation_id, :anthracyclinesbolusinf, :anthracyclinesbolusinfnoyes, :chemoorbonemarrow, :cytostaticdrugid, :dosequality, :journal_id, :totalcumulateddosemg, :totalcumulateddoseunits
  belongs_to :journal
  belongs_to :bone_marrow_transplantation

  validates_presence_of :cytostaticdrugid, :totalcumulateddosemg, :dosequality
  validates_presence_of :anthracyclinesbolusinf, :if => :anthracycline?
  def anthracycline?
    [302, 304, 307, 310].include? cytostaticdrugid
  end
  def self.get_values(id)
    row = []
    j = CytostaticDrugGiven.find(id)
    row << j.attributes.values_at(*column_names)
  end

  def self.to_csv(options = {})
    CSV.generate(options) do |csv|
      columns = ["id", "journal_id", "cytostaticdrugid", "totalcumulateddosemg", "dosequality",
        "anthracyclinesbolusinf", "chemoorbonemarrow"]
      csv << column_names
      all.each do |cytostatic_drug_given|
        csv << cytostatic_drug_given.attributes.values_at(*columns)
      end
    end
  end
end
