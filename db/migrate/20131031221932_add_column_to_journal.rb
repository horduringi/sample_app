class AddColumnToJournal < ActiveRecord::Migration
  def change
    add_column :journals, :dateofextraction, :date
  end
end
