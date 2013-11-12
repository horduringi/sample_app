class Surgery < ActiveRecord::Base
  attr_accessible *column_names, :surgerycompleteremovalorgan, :surgerycompleteremovalorganlaterality, :surgerycompleteremovalorganspec, :surgerydate, :surgeryradicality, :surgerytype, :journal_id
  belongs_to :journal
end