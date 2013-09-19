class CreateSoftTissueSarcomasTumorTypes < ActiveRecord::Migration
  def change
    create_table :soft_tissue_sarcomas_tumor_types do |t|
      t.string :text

      t.timestamps
    end
  end
end
