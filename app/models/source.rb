class Source < ActiveHash::Base
  self.data = [{ id: 1, text: "Bone marrow", created_at: "2013-09-08 12:35:12", updated_at: "2013-10-16 22:24:02", seq: 1}, { id: 2, text: "Peripheral blood", created_at: "2013-09-08 12:35:22", updated_at: "2013-10-16 22:24:02", seq: 2}, { id: 3, text: "Cord blood", created_at: "2013-09-08 12:35:27", updated_at: "2013-10-16 22:24:02", seq: 3}, { id: 4, text: "Unknown", created_at: "2013-09-08 12:35:34", updated_at: "2013-10-16 22:24:22", seq: 9}]
  def source_combo
    "#{seq} - #{self.text}"
  end
end
