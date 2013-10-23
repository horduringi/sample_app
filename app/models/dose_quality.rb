class DoseQuality < ActiveRecord::Base
  attr_accessible :text
  def dose_quality_combo
    "#{self.id} - #{self.text}"
  end
end
