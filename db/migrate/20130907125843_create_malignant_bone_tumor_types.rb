class CreateMalignantBoneTumorTypes < ActiveRecord::Migration
  def change
    create_table :malignant_bone_tumor_types do |t|
      t.string :text

      t.timestamps
    end
  end
end
