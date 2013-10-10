class GermCellTumorsAndGonadalsTumorType < ActiveRecord::Base
  attr_accessible :text
  def germcelltumorsandgonadalstumorstype_combo
    "#{id} - #{self.text}"
  end
end
