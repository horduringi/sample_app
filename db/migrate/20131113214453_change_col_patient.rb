class ChangeColPatient < ActiveRecord::Migration
  def up
    rename_column :patients, :germcelltumorsandgonadalstumorsmetastasisatdiagnosis, :germcellandgonadalstumorsmetastasisatdiagnosis
  end

  def down
  end
end
