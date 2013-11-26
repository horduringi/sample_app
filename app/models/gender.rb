class Gender < ActiveHash::Base
  self.data = [{ id: 1, gendername: "Male", created_at: "2013-09-07 15:49:59", updated_at: "2013-09-07 15:54:28"}, { id: 2, gendername: "Female", created_at: "2013-09-07 15:50:06", updated_at: "2013-09-07 15:58:16"}]

  def gender_combo
    "#{id} - #{self.gendername}"
  end
end
