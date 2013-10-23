class SurgeryCompleteRemovalOrganLaterality < ActiveRecord::Base
  attr_accessible :text
  def surgerycompleteremovalorganlaterality_combo
    "#{id} - #{self.text}"
  end
end
