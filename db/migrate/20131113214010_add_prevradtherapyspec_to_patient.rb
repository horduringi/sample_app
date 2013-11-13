class AddPrevradtherapyspecToPatient < ActiveRecord::Migration
  def change
    add_column :patients, :prevradtherapyspec, :string
  end
end
