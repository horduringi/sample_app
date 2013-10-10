class LateralityRlbmn < ActiveRecord::Base
  attr_accessible :text
  def lateralityrlbmn_combo
    "#{seq} - #{self.text}"
  end
end
