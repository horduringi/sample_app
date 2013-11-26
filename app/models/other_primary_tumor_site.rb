class OtherPrimaryTumorSite < ActiveHash::Base
  self.data = [{ id: 1, text: "Head", created_at: "2013-09-08 12:14:30", updated_at: "2013-09-08 12:14:30"}, { id: 2, text: "Neck", created_at: "2013-09-08 12:14:48", updated_at: "2013-09-08 12:14:48"}, { id: 3, text: "Thorax", created_at: "2013-09-08 12:14:53", updated_at: "2013-09-08 12:14:53"}, { id: 4, text: "Abdomen / Pelvic area", created_at: "2013-09-08 12:15:15", updated_at: "2013-09-08 12:15:15"}, { id: 5, text: "Lumbosacral", created_at: "2013-09-08 12:15:25", updated_at: "2013-09-08 12:15:25"}, { id: 6, text: "Upper extremities", created_at: "2013-09-08 12:15:34", updated_at: "2013-09-08 12:15:34"}, { id: 7, text: "Lower extremities", created_at: "2013-09-08 12:15:41", updated_at: "2013-09-08 12:15:41"}, { id: 8, text: "Skin", created_at: "2013-09-08 12:15:46", updated_at: "2013-09-08 12:15:46"}, { id: 9, text: "Other, please specify", created_at: "2013-09-08 12:15:54", updated_at: "2013-09-08 12:15:54"}]
  def otherprimarytumorsite_combo
    "#{id} - #{self.text}"
  end
end
