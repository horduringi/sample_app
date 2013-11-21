class ChangeFromIntegerToDateOthersMore < ActiveRecord::Migration
  def up
    remove_column :bone_marrow_transplantations, :completiondate
    add_column :bone_marrow_transplantations, :completiondate_day, :integer
    add_column :bone_marrow_transplantations, :completiondate_month, :integer
    add_column :bone_marrow_transplantations, :completiondate_year, :integer
  end

  def down
  end
end
