class AddSeqToSurgeryType < ActiveRecord::Migration
  def change
    add_column :surgery_types, :seq, :int
  end
end
