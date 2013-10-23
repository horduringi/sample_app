class AddSeqToDonor < ActiveRecord::Migration
  def change
    add_column :donors, :seq, :integer
  end
end
