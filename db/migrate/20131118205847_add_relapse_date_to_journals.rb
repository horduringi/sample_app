class AddRelapseDateToJournals < ActiveRecord::Migration
  def change
    add_column :journals, :relapse_date, :date
  end
end
