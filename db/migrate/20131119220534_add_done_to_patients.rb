class AddDoneToPatients < ActiveRecord::Migration
  def change
    add_column :patients, :is_done, :boolean
  end
end
