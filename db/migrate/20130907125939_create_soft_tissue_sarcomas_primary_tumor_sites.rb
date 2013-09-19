class CreateSoftTissueSarcomasPrimaryTumorSites < ActiveRecord::Migration
  def change
    create_table :soft_tissue_sarcomas_primary_tumor_sites do |t|
      t.string :text

      t.timestamps
    end
  end
end
