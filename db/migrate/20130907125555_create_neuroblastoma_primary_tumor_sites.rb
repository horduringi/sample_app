class CreateNeuroblastomaPrimaryTumorSites < ActiveRecord::Migration
  def change
    create_table :neuroblastoma_primary_tumor_sites do |t|
      t.string :text

      t.timestamps
    end
  end
end
