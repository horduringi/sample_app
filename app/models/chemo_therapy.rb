class ChemoTherapy < ActiveRecord::Base
  attr_accessible *column_names, :treatmentprotocol, :bodysurface, :height, :measurementdate, :journal_id, :weight, :yearnumber, :estimated
  belongs_to :journal

  validates_presence_of :bodysurface, :measurementdate_day, :measurementdate_month, :measurementdate_year, :weight, :height, :estimated
  def self.get_values(id)
    row = []
    j = ChemoTherapy.find(id)
    row << j.attributes.values_at(*column_names)
  end
  def self.to_csv(options = {})
    CSV.generate(options) do |csv|
      columns = ["id", "journal_id", "bodysurface", "measurementdate_day", "measurementdate_month", "measurementdate_year",
        "weight", "height", "estimated"]
      csv << column_names
      all.each do |chemo_therapies|
        csv << chemo_therapies.attributes.values_at(*columns)
      end
    end
  end
end
