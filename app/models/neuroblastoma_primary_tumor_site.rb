class NeuroblastomaPrimaryTumorSite < ActiveRecord::Base
  attr_accessible :text
  def neuroblastomaprimarytumorsite_combo
    "#{seq} - #{self.text}"
  end
end
