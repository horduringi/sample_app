class AddPatientIdToJournals < ActiveRecord::Migration
  def change
    add_column :journals, :patient_id, :integer
  end
end
