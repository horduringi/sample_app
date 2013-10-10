class OtherPrimaryTumorSite < ActiveRecord::Base
  attr_accessible :text
  def otherprimarytumorsite_combo
    "#{id} - #{self.text}"
  end
end
