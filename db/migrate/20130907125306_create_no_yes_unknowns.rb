class CreateNoYesUnknowns < ActiveRecord::Migration
  def change
    create_table :no_yes_unknowns do |t|
      t.string :text

      t.timestamps
    end
  end
end
