class RemissionStatus < ActiveRecord::Base
  attr_accessible :text
  def combo
    "#{id} - #{text}"
  end
end
