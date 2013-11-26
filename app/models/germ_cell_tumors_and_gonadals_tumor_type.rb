class GermCellTumorsAndGonadalsTumorType < ActiveHash::Base
  self.data = [{ id: 1, text: "Gonadal germ cell tumor", created_at: "2013-09-08 12:10:16", updated_at: "2013-09-08 12:10:16"}, { id: 2, text: "Gonadal non-germ cell tumor", created_at: "2013-09-08 12:10:31", updated_at: "2013-09-08 12:10:31"}, { id: 3, text: "Intracranial germ cell tumor (Germinoma, including ...", created_at: "2013-09-08 12:11:35", updated_at: "2013-09-08 12:11:35"}, { id: 4, text: "Intraspinal germ cell tumor", created_at: "2013-09-08 12:12:05", updated_at: "2013-09-08 12:12:05"}, { id: 5, text: "Extragonadal germ cell tumor, excluding CNS (sacral...", created_at: "2013-09-08 12:12:49", updated_at: "2013-09-08 12:12:49"}]
  def germcelltumorsandgonadalstumorstype_combo
    "#{id} - #{self.text}"
  end
end
