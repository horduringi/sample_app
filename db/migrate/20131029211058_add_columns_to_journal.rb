class AddColumnsToJournal < ActiveRecord::Migration
  def change
    add_column :journals, :chemotherapybodysurfaceatdiagnosis, :float
    add_column :journals, :chemotherapyweightatdiagnosis, :float
    add_column :journals, :chemotherapyheightatdiagnosis, :float
    add_column :journals, :chemotherapyestimated, :int
  end
end
