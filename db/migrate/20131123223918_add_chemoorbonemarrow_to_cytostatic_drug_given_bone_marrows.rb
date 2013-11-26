class AddChemoorbonemarrowToCytostaticDrugGivenBoneMarrows < ActiveRecord::Migration
  def change
    add_column :cytostatic_drug_given_bone_marrows, :chemoorbonemarrow, :integer
  end
end
