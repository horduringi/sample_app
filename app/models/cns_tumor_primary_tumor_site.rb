class CnsTumorPrimaryTumorSite < ActiveRecord::Base
  attr_accessible :text
  def cnstumorprimarytumorsite_combo
    "#{id} - #{self.text}"
  end
end
