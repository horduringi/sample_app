class Surgery < ActiveRecord::Base
  attr_accessible :studynumber, :surgerycompleteremovalorgan, :surgerycompleteremovalorganlaterality, :surgerycompleteremovalorganspec, :surgerydate, :surgeryradicality, :surgerytype
end
