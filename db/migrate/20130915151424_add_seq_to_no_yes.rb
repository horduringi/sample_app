class AddSeqToNoYes < ActiveRecord::Migration
  def change
    add_column :no_yes, :seq, :integer
  end
end
