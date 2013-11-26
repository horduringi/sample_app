class LeukemiaSubType < ActiveHash::Base
  self.data = [{ id: 1, text: "ALL, unspecified", created_at: "2013-09-07 16:23:00", updated_at: "2013-09-07 16:23:00"}, { id: 2, text: "pre-B cell ALL", created_at: "2013-09-07 16:23:19", updated_at: "2013-09-07 16:23:19"}, { id: 3, text: "B-cell ALL, mature", created_at: "2013-09-07 16:23:31", updated_at: "2013-09-07 16:23:31"}, { id: 4, text: "T-cell ALL", created_at: "2013-09-07 16:23:40", updated_at: "2013-09-07 16:23:40"}, { id: 5, text: "AML", created_at: "2013-09-07 16:23:46", updated_at: "2013-09-07 16:23:46"}, { id: 6, text: "MDS", created_at: "2013-09-07 16:23:52", updated_at: "2013-09-07 16:23:52"}, { id: 7, text: "CML", created_at: "2013-09-07 16:23:56", updated_at: "2013-09-07 16:23:56"}, { id: 8, text: "JMML", created_at: "2013-09-07 16:24:00", updated_at: "2013-09-07 16:24:00"}, { id: 9, text: "Leukemia, not specified", created_at: "2013-09-07 16:24:13", updated_at: "2013-09-07 16:24:13"}]
  def leukemiasubtype_combo
    "#{id} - #{self.text}"
  end
end
