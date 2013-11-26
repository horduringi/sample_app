class LateralityRlbmn < ActiveHash::Base
  self.data = [{ id: 1, text: "Right", created_at: "2013-09-07 21:57:32", updated_at: "2013-09-28 09:07:17", seq: 1}, { id: 2, text: "Left", created_at: "2013-09-07 21:57:38", updated_at: "2013-09-28 09:07:17", seq: 2}, { id: 3, text: "Bilateral", created_at: "2013-09-07 21:57:42", updated_at: "2013-09-28 09:07:17", seq: 3}, { id: 4, text: "Midline", created_at: "2013-09-07 21:57:50", updated_at: "2013-09-28 09:07:17", seq: 4}, { id: 5, text: "Not available", created_at: "2013-09-07 21:57:57", updated_at: "2013-09-28 09:08:40", seq: 9}]
  def lateralityrlbmn_combo
    "#{seq} - #{self.text}"
  end
end
