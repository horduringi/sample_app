class AddJournalIdToSurgery < ActiveRecord::Migration
  def change
    add_column :surgeries, :journal_id, :integer
  end
end
