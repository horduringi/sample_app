class ChromosomalDisorder < ActiveHash::Base
  self.data = [{ id: 1, text: "No", created_at: "2013-09-07 16:00:23", updated_at: "2013-09-20 22:36:16", seq: 0}, 
               { id: 2, text: "Yes, Down's syndrome", created_at: "2013-09-07 16:00:33", updated_at: "2013-09-20 22:36:16", seq: 1},
               { id: 3, text: "Yes, other than Down's syndrome", created_at: "2013-09-07 16:00:45", updated_at: "2013-09-20 22:36:16", seq: 2}]
  def chromosomaldisorder_combo
    "#{seq} - #{self.text}"
  end
end
