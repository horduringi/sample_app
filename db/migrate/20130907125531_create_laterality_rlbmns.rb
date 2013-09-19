class CreateLateralityRlbmns < ActiveRecord::Migration
  def change
    create_table :laterality_rlbmns do |t|
      t.string :text

      t.timestamps
    end
  end
end
