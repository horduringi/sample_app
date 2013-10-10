class AddInternalradiotherapyToJournals < ActiveRecord::Migration
  def change
    add_column :journals, :internalradiotherapy, :integer
  end
end
