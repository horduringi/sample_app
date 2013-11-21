class StudyNumberAsStringPatient < ActiveRecord::Migration
  def up
    change_column :patients, :studynumber, :string
  end

  def down
  end
end
