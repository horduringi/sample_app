class CreateLatarelityRlbus < ActiveRecord::Migration
  def change
    create_table :latarelity_rlbus do |t|
      t.string :text

      t.timestamps
    end
  end
end
