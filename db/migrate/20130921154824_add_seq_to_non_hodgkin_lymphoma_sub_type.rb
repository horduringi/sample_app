class AddSeqToNonHodgkinLymphomaSubType < ActiveRecord::Migration
  def change
    add_column :non_hodgkin_lymphoma_sub_types, :seq, :integer
  end
end
