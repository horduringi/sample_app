class CnsTumorPrimaryTumorSite < ActiveHash::Base
  self.data = [{ id: 1, text: "Cerebrum", created_at: "2013-09-07 21:16:35", updated_at: "2013-09-07 21:16:35"}, 
               { id: 2, text: "Frontal lobe", created_at: "2013-09-07 21:16:45", updated_at: "2013-09-07 21:16:45"}, 
               { id: 3, text: "Temporal lobe", created_at: "2013-09-07 21:16:52", updated_at: "2013-09-07 21:16:52"}, 
               { id: 4, text: "Parietal lobe", created_at: "2013-09-07 21:16:58", updated_at: "2013-09-07 21:16:58"}, 
               { id: 5, text: "Occipital lobe", created_at: "2013-09-07 21:17:04", updated_at: "2013-09-07 21:17:04"},
               { id: 6, text: "Pituitary (hypophysis)", created_at: "2013-09-07 21:17:23", updated_at: "2013-09-07 21:17:23"}, 
               { id: 7, text: "Corpus pineale", created_at: "2013-09-07 21:17:39", updated_at: "2013-09-07 21:17:39"}, 
               { id: 8, text: "Brain stem", created_at: "2013-09-07 21:20:32", updated_at: "2013-09-07 21:20:32"},
               { id: 9, text: "Spinal cord", created_at: "2013-09-07 21:20:40", updated_at: "2013-09-07 21:20:40"}, 
               { id: 10, text: "Cauda equina", created_at: "2013-09-07 21:20:47", updated_at: "2013-09-07 21:20:47"}, 
               { id: 11, text: "Cerebral meninges", created_at: "2013-09-07 21:20:56", updated_at: "2013-09-07 21:20:56"}, 
               {id: 12, text: "Spinal meninges", created_at: "2013-09-07 21:21:08", updated_at: "2013-09-07 21:21:08"}, 
               { id: 13, text: "Brain, NOS (not otherwise specified)", created_at: "2013-09-07 21:21:34", updated_at: "2013-09-07 21:21:34"}, 
               { id: 14, text: "Meninges, NOS", created_at: "2013-09-07 21:22:14", updated_at: "2013-09-07 21:22:14"}, 
               { id: 15, text: "Ventricles, NOS", created_at: "2013-09-07 21:28:33", updated_at: "2013-09-07 21:28:33"}, 
               { id: 16, text: "Cerebellum, NOS", created_at: "2013-09-07 21:28:41", updated_at: "2013-09-07 21:28:41"}, 
               { id: 17, text: "Cranial nerves, other than n.opticus or n.accusticu...", created_at: "2013-09-07 21:29:06", updated_at: "2013-09-07 21:29:06"}, 
               { id: 18, text: "Cranial nerves, n.opticus", created_at: "2013-09-07 21:29:40", updated_at: "2013-09-07 21:29:40"}, 
               { id: 19, text: "Cranial nerves, n.accusticus", created_at: "2013-09-07 21:31:08", updated_at: "2013-09-07 21:31:08"}, 
               {id: 20, text: "Other", created_at: "2013-09-07 21:31:57", updated_at: "2013-09-07 21:31:57"}]
  def cnstumorprimarytumorsite_combo
    "#{id} - #{self.text}"
  end
end
