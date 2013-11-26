class SurgeryType < ActiveHash::Base
  self.data = [{ id: 1, text: "Biopsy only", created_at: "2013-09-08 12:21:55", updated_at: "2013-10-10 22:15:38", seq: 1}, { id: 2, text: "Partial excision", created_at: "2013-09-08 12:22:03", updated_at: "2013-10-10 22:15:38", seq: 2}, { id: 3, text: "Complete excision", created_at: "2013-09-08 12:22:12", updated_at: "2013-10-10 22:15:38", seq: 3}, { id: 4, text: "Amputation or enucleation", created_at: "2013-09-08 12:22:28", updated_at: "2013-10-10 22:15:38", seq: 4}, { id: 5, text: "Unknown", created_at: "2013-09-08 12:23:35", updated_at: "2013-10-10 22:16:21", seq: 9}]
  def surgerytype_combo
    "#{seq} - #{self.text}"
  end
end
