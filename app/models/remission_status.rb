class RemissionStatus < ActiveHash::Base
  self.data = [{ id: 1, text: "CR1 ( = no recurrent disease )", created_at: "2013-09-08 12:30:15", updated_at: "2013-09-08 12:30:15"}, { id: 2, text: "CR2", created_at: "2013-09-08 12:30:21", updated_at: "2013-09-08 12:30:21"}, { id: 3, text: "CR3", created_at: "2013-09-08 12:30:23", updated_at: "2013-09-08 12:30:23"}, { id: 4, text: "CR4", created_at: "2013-09-08 12:30:28", updated_at: "2013-09-08 12:30:28"}, { id: 5, text: "Remaining disease", created_at: "2013-09-08 12:30:35", updated_at: "2013-09-08 12:30:35"}]
  def combo
    "#{id} - #{text}"
  end
end
