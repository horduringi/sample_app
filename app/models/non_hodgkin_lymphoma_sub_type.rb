class NonHodgkinLymphomaSubType < ActiveHash::Base
  self.data = [{ id: 1, text: "pre-B-lymphoblastic", created_at: "2013-09-07 16:27:19", updated_at: "2013-09-21 15:50:29", seq: 1}, { id: 2, text: "B-cell or Burkitt lymphoma (BL)", created_at: "2013-09-07 16:27:33", updated_at: "2013-09-21 15:50:29", seq: 2}, { id: 3, text: "T-cell", created_at: "2013-09-07 16:27:41", updated_at: "2013-09-21 15:50:29", seq: 3}, { id: 4, text: "Anaplastic large cell lymphoma (ALCL or LCAL, large...", created_at: "2013-09-07 16:28:08", updated_at: "2013-09-21 15:50:29", seq: 4}, { id: 5, text: "Other or not specified", created_at: "2013-09-07 16:28:23", updated_at: "2013-09-21 15:51:36", seq: 9}]
  def nonhodgkinlymphomasubtype_combo
    "#{seq} - #{self.text}"
  end
end
