class LateralityRlbu < ActiveRecord::Base
  attr_accessible :text
  def lateralityrlbu_combo
    "#{seq} - #{self.text}"
  end
end
