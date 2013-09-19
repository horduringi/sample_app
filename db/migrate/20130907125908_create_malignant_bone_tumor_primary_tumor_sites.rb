class CreateMalignantBoneTumorPrimaryTumorSites < ActiveRecord::Migration
  def change
    create_table :malignant_bone_tumor_primary_tumor_sites do |t|
      t.string :text

      t.timestamps
    end
  end
end
