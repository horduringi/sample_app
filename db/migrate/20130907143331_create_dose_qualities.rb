class CreateDoseQualities < ActiveRecord::Migration
  def change
    create_table :dose_qualities do |t|
      t.string :text

      t.timestamps
    end
  end
end
