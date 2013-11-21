class AddTreatmentNoToJournals < ActiveRecord::Migration
  def change
    add_column :journals, :treatment_no, :integer
  end
end
