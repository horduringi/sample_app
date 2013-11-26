class MalignantBoneTumorType < ActiveHash::Base
  self.data = [{ id: 1, text: "Osteosarcoma", created_at: "2013-09-07 22:32:08", updated_at: "2013-09-28 17:14:33", seq: 1}, { id: 2, text: "Ewing sarcoma*", created_at: "2013-09-07 22:32:39", updated_at: "2013-09-28 17:14:33", seq: 2}, { id: 3, text: "Other, specify (free text)", created_at: "2013-09-07 22:32:52", updated_at: "2013-09-28 17:14:57", seq: 9}]
  def malignantbonetumortype_combo
    "#{seq} - #{self.text}"
  end
end
