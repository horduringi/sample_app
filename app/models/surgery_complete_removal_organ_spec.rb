class SurgeryCompleteRemovalOrganSpec < ActiveRecord::Base
  attr_accessible :text
  def surgerycompleteremovalorganspec_combo
    "#{id} - #{self.text}"
  end
end
