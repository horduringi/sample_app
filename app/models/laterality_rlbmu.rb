class LateralityRlbmu < ActiveHash::Base
  self.data = [{ id: 1, text: "Right", created_at: "2013-09-07 22:30:23", updated_at: "2013-09-28 17:16:54", seq: 1}, { id: 2, text: "Left", created_at: "2013-09-07 22:30:28", updated_at: "2013-09-28 17:16:54", seq: 2}, { id: 3, text: "Bilateral", created_at: "2013-09-07 22:30:33", updated_at: "2013-09-28 17:16:54", seq: 3}, { id: 4, text: "Midline", created_at: "2013-09-07 22:30:39", updated_at: "2013-09-28 17:16:54", seq: 4}, { id: 5, text: "Unknown", created_at: "2013-09-07 22:30:47", updated_at: "2013-09-28 17:17:20", seq: 9}]
  def lateralityrlbmu_combo
    "#{seq} - #{self.text}"
  end
end
