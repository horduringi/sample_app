class AnthracyclinesBolusInf < ActiveHash::Base
  self.data = [{ id: 1, text: "Bolus < 30 min", created_at: "2013-09-08 12:28:43", updated_at: "2013-10-20 10:34:01", seq: 1}, 
               { id: 2, text: "Infusion for > 30 min and < 6 hours", created_at: "2013-09-08 12:29:07", updated_at: "2013-10-20 10:34:10", seq: 2},
               { id: 3, text: "Infusion for >= 6 hours", created_at: "2013-09-08 12:29:22", updated_at: "2013-10-20 10:37:53", seq: 3}, 
               { id: 4, text: "Not known", created_at: "2013-09-08 12:29:37", updated_at: "2013-10-20 10:35:04", seq: 9}]
  def combo
    "#{seq} - #{self.text}"
  end
end
