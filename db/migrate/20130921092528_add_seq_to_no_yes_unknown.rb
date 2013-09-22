class AddSeqToNoYesUnknown < ActiveRecord::Migration
  def change
    add_column :no_yes_unknowns, :seq, :integer
  end
end
