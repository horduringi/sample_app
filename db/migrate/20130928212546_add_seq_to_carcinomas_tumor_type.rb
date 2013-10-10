class AddSeqToCarcinomasTumorType < ActiveRecord::Migration
  def change
    add_column :carcinomas_tumor_types, :seq, :integer
  end
end
