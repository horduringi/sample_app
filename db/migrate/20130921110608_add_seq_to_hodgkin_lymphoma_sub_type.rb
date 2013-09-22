class AddSeqToHodgkinLymphomaSubType < ActiveRecord::Migration
  def change
    add_column :hodgkin_lymphoma_sub_types, :seq, :integer
  end
end
