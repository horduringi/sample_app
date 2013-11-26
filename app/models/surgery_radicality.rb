class SurgeryRadicality < ActiveHash::Base
  self.data = [{ id: 1, text: "Microscopically radical", created_at: "2013-09-08 12:24:07", updated_at: "2013-10-11 06:09:51", seq: 1}, { id: 2, text: "Macroscopically radical", created_at: "2013-09-08 12:24:15", updated_at: "2013-10-11 06:17:05", seq: 2}, { id: 3, text: "Questionable radicality", created_at: "2013-09-08 12:24:42", updated_at: "2013-10-11 06:17:05", seq: 3}, { id: 4, text: "Not radical", created_at: "2013-09-08 12:24:49", updated_at: "2013-10-11 06:17:05", seq: 4}, { id: 5, text: "Unknown", created_at: "2013-09-08 12:25:07", updated_at: "2013-10-11 06:18:01", seq: 9}]
  def surgeryradicality_combo
    "#{seq} - #{self.text}"
  end
end
