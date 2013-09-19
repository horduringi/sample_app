class CreateNoYes < ActiveRecord::Migration
  def change
    create_table :no_yes do |t|
      t.string :text

      t.timestamps
    end
  end
end
