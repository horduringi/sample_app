class CarcinomasTumorType < ActiveRecord::Base
  attr_accessible :text
  def carcinomastumortype_combo
    "#{seq} - #{self.text}"
  end
end
