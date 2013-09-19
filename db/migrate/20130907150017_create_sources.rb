class CreateSources < ActiveRecord::Migration
  def change
    create_table :sources do |t|
      t.string :text

      t.timestamps
    end
  end
end
