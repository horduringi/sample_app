class CreateDonors < ActiveRecord::Migration
  def change
    create_table :donors do |t|
      t.string :text

      t.timestamps
    end
  end
end
