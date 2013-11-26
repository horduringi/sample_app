class Donor < ActiveHash::Base
  self.data = [{ id: 1, text: "Matched sibling", created_at: "2013-09-08 12:33:05", updated_at: "2013-10-16 22:20:20", seq: 1}, { id: 2, text: "Unmatched sibling", created_at: "2013-09-08 12:33:18", updated_at: "2013-10-16 22:20:20", seq: 2}, { id: 3, text: "Parent", created_at: "2013-09-08 12:33:25", updated_at: "2013-10-16 22:20:20", seq: 3}, { id: 4, text: "Matched unrelated donor", created_at: "2013-09-08 12:33:36", updated_at: "2013-10-16 22:20:20", seq: 4}, { id: 5, text: "Mismatched unrelated donor", created_at: "2013-09-08 12:34:37", updated_at: "2013-10-16 22:20:20", seq: 5}, { id: 6, text: "Unknown", created_at: "2013-09-08 12:34:47", updated_at: "2013-10-16 22:21:21", seq: 9}]

  def donor_combo
    "#{seq} - #{self.text}"
  end
end
