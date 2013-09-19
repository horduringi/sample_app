class CreateChemoTherapies < ActiveRecord::Migration
  def change
    create_table :chemo_therapies do |t|
      t.integer :recordid
      t.integer :yearnumber
      t.date :measurementdata
      t.float :bodysurface
      t.float :weight
      t.float :height

      t.timestamps
    end
  end
end
