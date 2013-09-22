class HodgkinLymphomaSubType < ActiveRecord::Base
  attr_accessible :text
  def hodgkinlymphomasubtype_combo
    "#{seq} - #{self.text}"
  end
end
