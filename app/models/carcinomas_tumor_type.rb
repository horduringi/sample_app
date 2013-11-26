class CarcinomasTumorType < ActiveHash::Base
  self.data = [{ id: 1, text: "Thyroid", created_at: "2013-09-08 12:08:26", updated_at: "2013-09-28 21:26:51", seq: 1}, 
               { id: 2, text: "Nasopharyngeal", created_at: "2013-09-08 12:08:37", updated_at: "2013-09-28 21:26:52", seq: 2},
               { id: 3, text: "Adrenocortical", created_at: "2013-09-08 12:08:46", updated_at: "2013-09-28 21:26:52", seq: 3}, 
               { id: 4, text: "Malignant melanoma", created_at: "2013-09-08 12:08:58", updated_at: "2013-09-28 21:26:52", seq: 4}, 
               { id: 5, text: "Other skin carcinomas", created_at: "2013-09-08 12:09:10", updated_at: "2013-09-28 21:26:52", seq: 5}, 
               { id: 6, text: "Other, specify:", created_at: "2013-09-08 12:09:19", updated_at: "2013-09-28 21:27:31", seq: 9}]
  def carcinomastumortype_combo
    "#{seq} - #{self.text}"
  end
end
