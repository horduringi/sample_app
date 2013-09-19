class CreateSurgeryCompleteRemovalOrganLateralities < ActiveRecord::Migration
  def change
    create_table :surgery_complete_removal_organ_lateralities do |t|
      t.string :text

      t.timestamps
    end
  end
end
