class CreateLateralityRlbns < ActiveRecord::Migration
  def change
    create_table :laterality_rlbns do |t|
      t.string :text

      t.timestamps
    end
  end
end
