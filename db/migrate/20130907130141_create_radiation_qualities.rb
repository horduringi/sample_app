class CreateRadiationQualities < ActiveRecord::Migration
  def change
    create_table :radiation_qualities do |t|
      t.string :text

      t.timestamps
    end
  end
end
