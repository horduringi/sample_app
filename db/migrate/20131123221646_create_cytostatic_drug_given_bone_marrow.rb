class CreateCytostaticDrugGivenBoneMarrow < ActiveRecord::Migration
  def change
    create_table :cytostatic_drug_given_bone_marrows do |t|
      t.integer :cytostaticdrugid
      t.references :journal
      t.integer :chemoorbonemarrow
      t.float :totalcumulateddosemg
      t.float :totalcumulateddoseunits
      t.integer :dosequality
      t.integer :anthracyclinesbolusinfnoyes
      t.integer :anthracyclinesbolusinf
      t.integer :cardioprotectants
      t.references :bone_marrow_transplantation

      t.timestamps
    end
    add_index :journals, :id
    add_index :bone_marrow_transplantations, :id
  end

end
