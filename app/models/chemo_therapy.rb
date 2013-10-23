class ChemoTherapy < ActiveRecord::Base
  attr_accessible :bodysurface, :height, :measurementdate, :journal_id, :weight, :yearnumber, :estimated
  belongs_to :journal
end
