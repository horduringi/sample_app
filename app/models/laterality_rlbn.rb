class LateralityRlbn < ActiveHash::Base
  self.data = [{ id: 1, text: "Right", created_at: "2013-09-07 22:02:12", updated_at: "2013-09-28 16:17:56", seq: 1}, { id: 2, text: "Left", created_at: "2013-09-07 22:02:24", updated_at: "2013-09-28 16:17:56", seq: 2}, { id: 3, text: "Bilateral", created_at: "2013-09-07 22:02:35", updated_at: "2013-09-28 16:17:56", seq: 3}, { id: 4, text: "Not available", created_at: "2013-09-07 22:02:42", updated_at: "2013-09-28 16:18:58", seq: 9}]
  def lateralityrlbn_combo
    "#{seq} - #{self.text}"
  end
end
