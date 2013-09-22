class ChronicDisease < ActiveRecord::Base
  attr_accessible :text

  def chronicdisease_combo
    "#{seq} - #{self.text}"
  end
end
