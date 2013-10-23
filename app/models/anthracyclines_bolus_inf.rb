class AnthracyclinesBolusInf < ActiveRecord::Base
  attr_accessible :text
  def combo
    "#{seq} - #{self.text}"
  end
end
