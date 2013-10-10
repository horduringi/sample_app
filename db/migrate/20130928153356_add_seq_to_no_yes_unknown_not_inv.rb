class AddSeqToNoYesUnknownNotInv < ActiveRecord::Migration
  def change
    add_column :no_yes_unknown_not_invs, :seq, :integer
  end
end
