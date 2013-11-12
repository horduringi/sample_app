class FloatToDecimalChemoTherapy < ActiveRecord::Migration
  def up
    change_column :chemo_therapies, :bodysurface, :decimal
    change_column :chemo_therapies, :weight, :decimal
    change_column :chemo_therapies, :height, :decimal
  end

  def down
  end
end
