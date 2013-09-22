class NonHodgkinLymphomaSubType < ActiveRecord::Base
  attr_accessible :text
  def nonhodgkinlymphomasubtype_combo
    "#{seq} - #{self.text}"
  end
end
