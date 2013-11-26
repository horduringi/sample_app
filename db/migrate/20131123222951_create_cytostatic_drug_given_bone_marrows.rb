class CreateCytostaticDrugGivenBoneMarrows < ActiveRecord::Migration
  def change
    drop_table :cytostatic_drug_given_bone_marrows
    create_table :cytostatic_drug_given_bone_marrows do |t|
      t.integer :cytostaticdrugid
      t.references :journal
      t.decimal :totalcumulateddosemg
      t.decimal :totalcumulateddoseunits
      t.integer :dosequality
      t.integer :anthracyclinesbolusinfnoyes
      t.integer :anthracyclinesbolusinf
      t.integer :cardioprotectants
      t.references :bone_marrow_transplantation

      t.timestamps
    end
  end
end
