class SoftTissueSarcomasPrimaryTumorSite < ActiveHash::Base
  self.data = [{ id: 1, text: "Head", created_at: "2013-09-08 12:03:57", updated_at: "2013-09-08 12:03:57"}, { id: 2, text: "Neck", created_at: "2013-09-08 12:04:03", updated_at: "2013-09-08 12:04:03"}, { id: 3, text: "Thorax, anterior", created_at: "2013-09-08 12:04:13", updated_at: "2013-09-08 12:04:13"}, { id: 4, text: "Thorax, posterior", created_at: "2013-09-08 12:04:22", updated_at: "2013-09-08 12:04:22"}, { id: 5, text: "Abdomen / Pelvic area", created_at: "2013-09-08 12:04:36", updated_at: "2013-09-08 12:04:36"}, { id: 6, text: "Lumbosacral", created_at: "2013-09-08 12:05:00", updated_at: "2013-09-08 12:05:00"}, { id: 7, text: "Upper extremities", created_at: "2013-09-08 12:05:13", updated_at: "2013-09-08 12:05:13"}, { id: 8, text: "Lower extremities", created_at: "2013-09-08 12:05:22", updated_at: "2013-09-08 12:05:22"}, { id: 9, text: "Other, please specify:", created_at: "2013-09-08 12:05:40", updated_at: "2013-09-28 21:09:04"}]
  def softtissuesarcomasprimarytumorsite_combo
    "#{id} - #{self.text}"
  end
end
