class AddExternalBeamRadiotherapyTreatingHospitalToJournal < ActiveRecord::Migration
  def change
    add_column :journals, :externalbeamradiotherapytreatinghospital, :string
    add_column :journals, :brachytherapytreatinghospital, :string
    add_column :journals, :internalradiotherapytreatinghospital, :string
  end
end
