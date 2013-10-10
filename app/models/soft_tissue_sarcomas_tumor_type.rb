class SoftTissueSarcomasTumorType < ActiveRecord::Base
  attr_accessible :text

  def softtissuesarcomastumortype_combo
    "#{seq} - #{self.text}"
  end
end
