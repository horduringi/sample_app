class ChangeRadiotherapy < ActiveRecord::Migration
  def change
    add_column :journals, :germcelltumorsandgonadalstumorstypeotherspec, :string
  end
end
