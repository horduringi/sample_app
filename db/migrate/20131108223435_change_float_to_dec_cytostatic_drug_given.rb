class ChangeFloatToDecCytostaticDrugGiven < ActiveRecord::Migration
  def up
    change_column :cytostatic_drug_givens, :totalcumulateddosemg, :decimal
    change_column :cytostatic_drug_givens, :totalcumulateddoseunits, :decimal
  end

  def down
  end
end
