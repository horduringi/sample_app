class HepaticTumorType < ActiveRecord::Base
  attr_accessible :text
  def hepatictumortype_combo
    "#{seq} - #{self.text}"
  end
end
