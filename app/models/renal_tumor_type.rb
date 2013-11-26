class RenalTumorType < ActiveHash::Base
  self.data = [{ id: 1, text: "Wilms' tumor = Nephroblastoma", created_at: "2013-09-07 22:05:50", updated_at: "2013-09-28 16:45:38", seq: 1}, { id: 2, text: "Rhabodoid or clear cell sarcoma", created_at: "2013-09-07 22:06:08", updated_at: "2013-09-28 16:45:38", seq: 2}, { id: 3, text: "Mesoblastic nephroma (congenital)", created_at: "2013-09-07 22:06:24", updated_at: "2013-09-28 16:45:38", seq: 3}, { id: 4, text: "Other, please specify (free text)", created_at: "2013-09-07 22:06:39", updated_at: "2013-09-28 16:46:00", seq: 9}]
  def renaltumortype_combo
    "#{seq} - #{self.text}"
  end
end
