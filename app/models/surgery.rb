class Surgery < ActiveRecord::Base
  attr_accessible *column_names, :surgerycompleteremovalorgan, :surgerycompleteremovalorganlaterality, :surgerycompleteremovalorganspec, :surgerydate, :surgeryradicality, :surgerytype, :journal_id
  belongs_to :journal
  def self.get_values(id)
    row = []
    j = Surgery.find(id)
    row << j.attributes.values_at(*column_names)
  end
end