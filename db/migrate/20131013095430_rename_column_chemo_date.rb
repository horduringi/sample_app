class RenameColumnChemoDate < ActiveRecord::Migration
  def up
    rename_column :chemo_therapies, :measurementdata, :measurementdate
  end

  def down
  end
end
