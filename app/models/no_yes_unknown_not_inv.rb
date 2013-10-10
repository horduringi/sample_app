class NoYesUnknownNotInv < ActiveRecord::Base
  attr_accessible :text
  def noyesunknownnotinv_combo
    "#{seq} - #{self.text}"
  end
end
