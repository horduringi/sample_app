class HodgkinLymphomaSubType < ActiveHash::Base
  self.data = [{ id: 1, text: "Nodular sclerosis (NS)", created_at: "2013-09-07 16:25:34", updated_at: "2013-09-21 11:11:52", seq: 1}, { id: 2, text: "Lymphocytic predominance", created_at: "2013-09-07 16:25:53", updated_at: "2013-09-21 11:11:52", seq: 2}, { id: 3, text: "Lymphocytic depletion", created_at: "2013-09-07 16:26:26", updated_at: "2013-09-21 11:11:52", seq: 3}, { id: 4, text: "Mixed cellularity (MC)", created_at: "2013-09-07 16:26:40", updated_at: "2013-09-21 11:11:52", seq: 4}, { id: 5, text: "Other* or not specified", created_at: "2013-09-07 16:26:49", updated_at: "2013-09-21 11:15:03", seq: 9}]
  def hodgkinlymphomasubtype_combo
    "#{seq} - #{self.text}"
  end
end
