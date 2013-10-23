class RemoveStudyNumberFromSurgery < ActiveRecord::Migration
  def up
    remove_column :surgeries, :studynumber
  end

  def down
    add_column :surgeries, :studynumber, :string
  end
end
