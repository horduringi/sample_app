class SurgeryType < ActiveRecord::Base
  attr_accessible :text
  def surgerytype_combo
    "#{seq} - #{self.text}"
  end
end
