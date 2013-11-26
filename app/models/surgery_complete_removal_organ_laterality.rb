class SurgeryCompleteRemovalOrganLaterality < ActiveHash::Base
  self.data = [{ id: 1, text: "Right", created_at: "2013-09-08 12:26:44", updated_at: "2013-09-08 12:26:44"}, { id: 2, text: "Left", created_at: "2013-09-08 12:26:48", updated_at: "2013-09-08 12:26:48"}, { id: 3, text: "Bilateral", created_at: "2013-09-08 12:26:55", updated_at: "2013-09-08 12:26:55"}, { id: 4, text: "Not applicable", created_at: "2013-09-08 12:27:03", updated_at: "2013-09-08 12:27:03"}]
  def surgerycompleteremovalorganlaterality_combo
    "#{id} - #{self.text}"
  end
end
