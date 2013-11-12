class AddChemoCardioprotectantsToJournal < ActiveRecord::Migration
  def change
    add_column :journals, :chemocardioprotectants, :integer
  end
end
