class NoYesUnknownNotInv < ActiveHash::Base
  self.data = [{ id: 1, text: "No", created_at: "2013-09-07 22:04:38", updated_at: "2013-09-28 16:21:31", seq: 0}, { id: 2, text: "Yes", created_at: "2013-09-07 22:04:52", updated_at: "2013-09-28 16:21:31", seq: 1}, { id: 3, text: "Unknown / Not investigated", created_at: "2013-09-07 22:05:11", updated_at: "2013-09-28 16:22:08", seq: 9}]
  def noyesunknownnotinv_combo
    "#{seq} - #{self.text}"
  end
end
