class CreateCytostaticDrugGivens < ActiveRecord::Migration
  def change
    create_table :cytostatic_drug_givens do |t|
      t.integer :cytostaticdrugid
      t.integer :recordid
      t.integer :chemoorbonemarrow
      t.float :totalcumulateddosemg
      t.float :totalcumulateddoseunits
      t.integer :dosequality
      t.integer :anthracyclinesbolusinfnoyes
      t.integer :anthracyclinesbolusinf
      t.integer :cardioprotectants

      t.timestamps
    end
  end
end
