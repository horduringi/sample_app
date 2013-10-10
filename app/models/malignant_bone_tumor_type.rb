class MalignantBoneTumorType < ActiveRecord::Base
  attr_accessible :text
  def malignantbonetumortype_combo
    "#{seq} - #{self.text}"
  end
end
