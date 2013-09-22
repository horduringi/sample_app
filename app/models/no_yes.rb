class NoYes < ActiveRecord::Base
  attr_accessible :text
  def noyes_combo
    "#{seq} - #{self.text}"
  end
end
