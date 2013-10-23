class Source < ActiveRecord::Base
  attr_accessible :text
  def source_combo
    "#{seq} - #{self.text}"
  end
end
