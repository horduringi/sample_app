class SurgeryRadicality < ActiveRecord::Base
  attr_accessible :text
  def surgeryradicality_combo
    "#{seq} - #{self.text}"
  end
end
