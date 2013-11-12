class RenameUserIdJournal < ActiveRecord::Migration
  def up
    rename_column :journals, :userid, :user_id
  end

  def down
  end
end
