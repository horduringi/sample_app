class AddEntryUserIdToPatients < ActiveRecord::Migration
  def change
    add_column :patients, :entry_user_id, :integer
  end
end
