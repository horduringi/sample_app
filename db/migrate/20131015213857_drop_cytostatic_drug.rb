class DropCytostaticDrug < ActiveRecord::Migration
  def up
    drop_table CytostaticDrug
  end

  def down
  end
end
