class LastDoctorsVisitStatus < ActiveHash::Base
  self.data = [{ id: 1, text: "Healthy, no permanent complications noted", created_at: "2013-09-08 12:31:29", updated_at: "2013-10-16 20:24:17", seq: 0}, { id: 2, text: "Permanent complications influencing quality of life...", created_at: "2013-09-08 12:32:33", updated_at: "2013-10-16 20:24:17", seq: 1}, { id: 3, text: "Unknown", created_at: "2013-09-08 12:32:44", updated_at: "2013-10-16 20:25:08", seq: 9}]
  def lastdoctorsvisitstatus_combo
    "#{seq} - #{self.text}"
  end
end
