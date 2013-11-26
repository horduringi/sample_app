class HepaticTumorType < ActiveHash::Base
  self.data = [{ id: 1, text: "Hepatoblastoma (HB)", created_at: "2013-09-08 12:07:20", updated_at: "2013-09-28 21:20:06", seq: 1}, { id: 2, text: "Hepatocellular carcinoma (HCC)", created_at: "2013-09-08 12:07:39", updated_at: "2013-09-28 21:20:17", seq: 2}, { id: 3, text: "Not specified", created_at: "2013-09-08 12:07:50", updated_at: "2013-09-28 21:20:27", seq: 9}]
  def hepatictumortype_combo
    "#{seq} - #{self.text}"
  end
end
