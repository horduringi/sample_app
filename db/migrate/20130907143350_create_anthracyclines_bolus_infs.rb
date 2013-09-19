class CreateAnthracyclinesBolusInfs < ActiveRecord::Migration
  def change
    create_table :anthracyclines_bolus_infs do |t|
      t.string :text

      t.timestamps
    end
  end
end
