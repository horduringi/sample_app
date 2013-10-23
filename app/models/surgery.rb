class Surgery < ActiveRecord::Base
  attr_accessible :surgerycompleteremovalorgan, :surgerycompleteremovalorganlaterality, :surgerycompleteremovalorganspec, :surgerydate, :surgeryradicality, :surgerytype, :journal_id
  belongs_to :journal
end