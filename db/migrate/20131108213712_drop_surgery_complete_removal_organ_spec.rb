class DropSurgeryCompleteRemovalOrganSpec < ActiveRecord::Migration
  def up
    drop_table :surgery_complete_removal_organ_specs
  end

  def down
  end
end
