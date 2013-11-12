class RemoveColumnsFromJournal < ActiveRecord::Migration
  def up
    remove_column :journals, :cumulativedose
    remove_column :journals, :numberoffractions
  end

  def down
  end
end
