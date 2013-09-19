class CreateNoYesUnknownNotInvs < ActiveRecord::Migration
  def change
    create_table :no_yes_unknown_not_invs do |t|
      t.string :text

      t.timestamps
    end
  end
end
