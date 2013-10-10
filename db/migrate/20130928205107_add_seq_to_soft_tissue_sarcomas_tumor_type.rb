class AddSeqToSoftTissueSarcomasTumorType < ActiveRecord::Migration
  def change
    add_column :soft_tissue_sarcomas_tumor_types, :seq, :integer
  end
end
