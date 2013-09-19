class CreateChemoOrBoneMarrows < ActiveRecord::Migration
  def change
    create_table :chemo_or_bone_marrows do |t|
      t.string :text

      t.timestamps
    end
  end
end
