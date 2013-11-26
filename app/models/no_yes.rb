class NoYes < ActiveHash::Base
  self.data = [{ id: 1, text: "No", created_at: "2013-09-07 16:01:00", updated_at: "2013-09-15 15:16:40", seq: 0}, { id: 2, text: "Yes", created_at: "2013-09-07 16:01:08", updated_at: "2013-09-15 15:16:52", seq: 1}]
  def noyes_combo
    "#{seq} - #{self.text}"
  end
end
