class ChromosomalDisorder < ActiveRecord::Base
  attr_accessible :text
  def chromosomaldisorder_combo
    "#{seq} - #{self.text}"
  end
end
