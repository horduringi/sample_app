class ChemoTherapy < ActiveRecord::Base
  attr_accessible *column_names, :treatmentprotocol, :bodysurface, :height, :measurementdate, :journal_id, :weight, :yearnumber, :estimated
  belongs_to :journal
end
