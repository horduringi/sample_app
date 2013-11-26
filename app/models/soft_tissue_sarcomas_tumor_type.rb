class SoftTissueSarcomasTumorType < ActiveHash::Base
  self.data = [{ id: 1, text: "Embryonal Rhadomyosarcoma (ERMS)", created_at: "2013-09-08 11:53:06", updated_at: "2013-09-28 20:52:32", seq: 1}, { id: 2, text: "Alveolar Rhabdomyosarcoma (ARMS)", created_at: "2013-09-08 12:00:23", updated_at: "2013-09-28 20:52:32", seq: 2}, { id: 3, text: "Fibrosarcoma", created_at: "2013-09-08 12:00:35", updated_at: "2013-09-28 20:52:32", seq: 3}, { id: 4, text: "Synovial sarcoma", created_at: "2013-09-08 12:00:45", updated_at: "2013-09-28 20:52:32", seq: 4}, { id: 5, text: "Non-specified soft-tissue sarcoma", created_at: "2013-09-08 12:01:01", updated_at: "2013-09-28 20:52:32", seq: 5}, { id: 6, text: "Other, please specify", created_at: "2013-09-08 12:01:31", updated_at: "2013-09-28 20:52:49", seq: 9}]

  def softtissuesarcomastumortype_combo
    "#{seq} - #{self.text}"
  end
end
