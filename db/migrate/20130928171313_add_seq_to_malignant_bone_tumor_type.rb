class AddSeqToMalignantBoneTumorType < ActiveRecord::Migration
  def change
    add_column :malignant_bone_tumor_types, :seq, :integer
  end
end
