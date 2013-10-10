class SoftTissueSarcomasPrimaryTumorSite < ActiveRecord::Base
  attr_accessible :text
  def softtissuesarcomasprimarytumorsite_combo
    "#{id} - #{self.text}"
  end
end
