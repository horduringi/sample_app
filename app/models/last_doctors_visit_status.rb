class LastDoctorsVisitStatus < ActiveRecord::Base
  attr_accessible :text
  def lastdoctorsvisitstatus_combo
    "#{seq} - #{self.text}"
  end
end
