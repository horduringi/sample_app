class NoYesUnknown < ActiveRecord::Base
  attr_accessible :text
  def noyesunknown_combo
    "#{seq} - #{self.text}"
  end
end
