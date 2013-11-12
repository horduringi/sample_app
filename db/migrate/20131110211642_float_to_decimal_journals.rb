class FloatToDecimalJournals < ActiveRecord::Migration
  def up
    remove_column :journals, :radio1targed1dose
    remove_column :journals, :radio2targed2dose
    remove_column :journals, :radio3targed3dose
    change_column :journals, :chemotherapybodysurfaceatdiagnosis, :decimal
    change_column :journals, :chemotherapyweightatdiagnosis, :decimal
    change_column :journals, :chemotherapyheightatdiagnosis, :decimal
  end

  def down
  end
end
