class Donor < ActiveRecord::Base
  attr_accessible :text
  def donor_combo
    "#{seq} - #{self.text}"
  end
end
