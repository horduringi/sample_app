class MalignantBoneTumorPrimaryTumorSite < ActiveRecord::Base
  attr_accessible :text
  def malignantbonetumorprimarytumorsite_combo
    "#{id} - #{self.text}"
  end
end
