class LeukemiaSubType < ActiveRecord::Base
  attr_accessible :text
  def leukemiasubtype_combo
    "#{id} - #{self.text}"
  end
end
