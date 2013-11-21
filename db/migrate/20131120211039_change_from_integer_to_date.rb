class ChangeFromIntegerToDate < ActiveRecord::Migration
  def up
    remove_column :patients, :radiorecordscopied
    add_column :patients, :radiorecordscopied_day, :integer
    add_column :patients, :radiorecordscopied_month, :integer
    add_column :patients, :radiorecordscopied_year, :integer
    remove_column :patients, :dateofdiagnosis
    add_column :patients, :dateofdiagnosis_day, :integer
    add_column :patients, :dateofdiagnosis_month, :integer
    add_column :patients, :dateofdiagnosis_year, :integer
    remove_column :patients, :lastdoctorsvisit
    add_column :patients, :lastdoctorsvisit_day, :integer
    add_column :patients, :lastdoctorsvisit_month, :integer
    add_column :patients, :lastdoctorsvisit_year, :integer
  end

  def down
  end
end
