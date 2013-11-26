class MissingInfo < ActiveHash::Base
  self.data = [{ id: 1, textshort: "no", text: "No missing information", created_at: "2013-09-07 15:50:50", updated_at: "2013-09-15 15:21:23", seq: 0}, { id: 2, textshort: "Yes minor", text: "Yes, minor information missing", created_at: "2013-09-07 15:52:21", updated_at: "2013-09-15 15:21:55", seq: 1}, { id: 3, textshort: "Yes major", text: "Yes, major information missing", created_at: "2013-09-07 15:52:34", updated_at: "2013-09-15 15:22:05", seq: 2}, { id: 4, textshort: "Yes", text: "Yes, records missing, destroyed or unobtainable", created_at: "2013-09-07 15:53:14", updated_at: "2013-09-15 15:22:23", seq: 3}]

  def missingInfo_combo
    "#{seq} - #{self.text}"
  end
end
