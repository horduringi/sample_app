class LateralityRlbn < ActiveRecord::Base
  attr_accessible :text
  def lateralityrlbn_combo
    "#{seq} - #{self.text}"
  end
end
