class OtherTumorType < ActiveRecord::Base
  attr_accessible :text
  def othertumortype_combo
    "#{seq} - #{self.text}"
  end
end
