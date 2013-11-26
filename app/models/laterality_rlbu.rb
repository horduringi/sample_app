class LateralityRlbu < ActiveHash::Base
  self.data = [{ id: 1, text: "Right", created_at: "2013-09-07 22:29:15", updated_at: "2013-09-28 16:47:06", seq: 1}, { id: 2, text: "Left", created_at: "2013-09-07 22:29:21", updated_at: "2013-09-28 16:47:06", seq: 2}, { id: 3, text: "Bilateral", created_at: "2013-09-07 22:29:29", updated_at: "2013-09-28 16:47:06", seq: 3}, { id: 4, text: "Unknown", created_at: "2013-09-07 22:29:41", updated_at: "2013-09-28 16:47:27", seq: 9}]
  def lateralityrlbu_combo
    "#{seq} - #{self.text}"
  end
end
