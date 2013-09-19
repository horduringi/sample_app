class CreateLatarelityRlbmus < ActiveRecord::Migration
  def change
    create_table :latarelity_rlbmus do |t|
      t.string :text

      t.timestamps
    end
  end
end
