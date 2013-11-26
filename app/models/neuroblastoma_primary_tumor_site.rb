class NeuroblastomaPrimaryTumorSite < ActiveHash::Base
  self.data = [{ id: 1, text: "Adrenal gland", created_at: "2013-09-07 21:59:17", updated_at: "2013-09-28 16:13:04", seq: 1}, { id: 2, text: "Head and/or neck", created_at: "2013-09-07 21:59:27", updated_at: "2013-09-28 16:14:54", seq: 2}, { id: 3, text: "Thorax", created_at: "2013-09-07 21:59:33", updated_at: "2013-09-28 16:14:54", seq: 3}, { id: 4, text: "Abdomen", created_at: "2013-09-07 21:59:38", updated_at: "2013-09-28 16:14:54", seq: 4}, { id: 5, text: "Other", created_at: "2013-09-07 21:59:45", updated_at: "2013-09-28 16:14:54", seq: 5}, { id: 6, text: "Unknown / Not available", created_at: "2013-09-07 21:59:56", updated_at: "2013-09-28 16:17:01", seq: 9}]
  def neuroblastomaprimarytumorsite_combo
    "#{seq} - #{self.text}"
  end
end
