class AddStudynumberToPatient < ActiveRecord::Migration
  def change
    add_column :patients, :studynumber, :integer
  end
end
