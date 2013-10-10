class RemoveStringFromJournals < ActiveRecord::Migration
  def change
    remove_column :journals, :string
  end
end
