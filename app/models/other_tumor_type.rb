class OtherTumorType < ActiveHash::Base
  self.data = [{ id: 1, text: "Histiocytosis (Langerhans Cell Histiocytosis = LCH)...", created_at: "2013-09-08 12:13:37", updated_at: "2013-09-28 22:05:44", seq: 1}, { id: 2, text: "Other, specify:", created_at: "2013-09-08 12:13:57", updated_at: "2013-09-28 22:08:51", seq: 9}]
  def othertumortype_combo
    "#{seq} - #{self.text}"
  end
end
