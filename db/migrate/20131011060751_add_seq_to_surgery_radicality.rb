class AddSeqToSurgeryRadicality < ActiveRecord::Migration
  def change
    add_column :surgery_radicalities, :seq, :int
  end
end
