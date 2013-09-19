class CreateSurgeryCompleteRemovalOrganSpecs < ActiveRecord::Migration
  def change
    create_table :surgery_complete_removal_organ_specs do |t|
      t.string :text

      t.timestamps
    end
  end
end
