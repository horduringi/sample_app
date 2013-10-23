class CreateRelapse < ActiveRecord::Migration
  def change
    create_table :relapses do |t|
      t.integer :number
      t.date :date

      t.timestamps
    end
  end
end
