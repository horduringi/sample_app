class LateralityRlbmu < ActiveRecord::Base
  attr_accessible :text
  def lateralityrlbmu_combo
    "#{seq} - #{self.text}"
  end
end
