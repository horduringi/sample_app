class Gender < ActiveRecord::Base
  attr_accessible :gendername

  def gender_combo
    "#{id} - #{self.gendername}"
  end
end
