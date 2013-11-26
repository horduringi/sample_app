class DoseQuality < ActiveHash::Base
  self.data = [{ id: 1, text: "Total dose extracted", created_at: "2013-09-08 12:27:38", updated_at: "2013-09-08 12:27:38"}, { id: 2, text: "Total dose, some estimated", created_at: "2013-09-08 12:27:46", updated_at: "2013-09-08 12:27:46"}, { id: 3, text: "Incomplete or partial dose", created_at: "2013-09-08 12:27:56", updated_at: "2013-09-08 12:27:56"}, { id: 4, text: "No dose data", created_at: "2013-09-08 12:28:05", updated_at: "2013-09-08 12:28:05"}]
  def dose_quality_combo
    "#{self.id} - #{self.text}"
  end
end
