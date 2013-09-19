class MissingInfo < ActiveRecord::Base
  attr_accessible :text, :textshort

  def missingInfo_combo
    "#{seq} - #{self.text}"
  end
end
