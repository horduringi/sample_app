class CnsTumorHistologicalType < ActiveHash::Base
  self.data = [{ id: 1, text: "Astrocytoma, juvenile", created_at: "2013-09-07 21:10:02", updated_at: "2013-09-07 21:10:02"},
               { id: 2, text: "Astrocytoma, NOS", created_at: "2013-09-07 21:10:17", updated_at: "2013-09-07 21:10:17"},
               { id: 3, text: "Primitive neuroectodermal tumor (PNET) = Medullobla...", created_at: "2013-09-07 21:10:40", updated_at: "2013-09-07 21:10:40"},
               { id: 4, text: "Plexus papilloma (Choroid plexus tumor)", created_at: "2013-09-07 21:11:07", updated_at: "2013-09-07 21:11:07"}, 
               { id: 5, text: "Meningioma", created_at: "2013-09-07 21:11:23", updated_at: "2013-09-07 21:11:23"}, 
               { id: 6, text: "Glioma", created_at: "2013-09-07 21:11:30", updated_at: "2013-09-07 21:13:30"}, 
               { id: 7, text: "Other gliomas", created_at: "2013-09-07 21:13:56", updated_at: "2013-09-07 21:13:56"},
               { id: 8, text: "Ependymoma", created_at: "2013-09-07 21:14:10", updated_at: "2013-09-07 21:14:10"}, 
               { id: 9, text: "Craniopharyngioma", created_at: "2013-09-07 21:14:25", updated_at: "2013-09-07 21:14:25"}, 
               { id: 10, text: "Pituitary adenoma (hypophyseal adenoma)", created_at: "2013-09-07 21:14:54", updated_at: "2013-09-07 21:14:54"}, 
               { id: 12, text: "Histological type not confirmed (no biopsy, only ra...", created_at: "2013-09-07 21:15:26", updated_at: "2013-09-07 21:15:26"}, 
               { id: 13, text: "Other or not specified", created_at: "2013-09-07 21:15:55", updated_at: "2013-09-07 21:15:55"}]
  def cnstumorhistologicaltype_combo
    "#{id} - #{self.text}"
  end
end
