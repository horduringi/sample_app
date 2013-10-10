class AddSeqToNeuroblastomaPrimaryTumorSite < ActiveRecord::Migration
  def change
    add_column :neuroblastoma_primary_tumor_sites, :seq, :integer
  end
end
