class RenalTumorType < ActiveRecord::Base
  attr_accessible :text
  def renaltumortype_combo
    "#{seq} - #{self.text}"
  end
end
