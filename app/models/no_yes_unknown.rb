class NoYesUnknown < ActiveHash::Base
  self.data = [{ id: 1, text: "No", created_at: "2013-09-07 16:16:43", updated_at: "2013-09-21 09:29:56", seq: 0}, { id: 2, text: "Yes", created_at: "2013-09-07 16:16:50", updated_at: "2013-09-21 09:29:56", seq: 1}, { id: 3, text: "Unknown", created_at: "2013-09-07 16:17:04", updated_at: "2013-09-21 11:23:23", seq: 9}]
  def noyesunknown_combo
    "#{seq} - #{self.text}"
  end
end
