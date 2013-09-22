class CnsTumorHistologicalType < ActiveRecord::Base
  attr_accessible :text
  def cnstumorhistologicaltype_combo
    "#{id} - #{self.text}"
  end
end
