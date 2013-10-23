class RenameColumnChemo < ActiveRecord::Migration
  def up
    rename_column :chemo_therapies, :recordid, :journal_id
  end

  def down
  end
end
