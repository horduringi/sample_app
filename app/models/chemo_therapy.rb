class ChemoTherapy < ActiveRecord::Base
  attr_accessible *column_names, :treatmentprotocol, :bodysurface, :height, :measurementdate, :journal_id, :weight, :yearnumber, :estimated
  belongs_to :journal
  def self.get_values(id)
    row = []
    j = ChemoTherapy.find(id)
    row << j.attributes.values_at(*column_names)
  end
end
