class FirstPrimCancerType < ActiveRecord::Base
  attr_accessible :text
  def firstprimcancertype_combo
    "#{id} - #{self.text}"
  end
end
