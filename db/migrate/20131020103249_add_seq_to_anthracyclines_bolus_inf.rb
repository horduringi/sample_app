class AddSeqToAnthracyclinesBolusInf < ActiveRecord::Migration
  def change
    add_column :anthracyclines_bolus_infs, :seq, :integer
  end
end
