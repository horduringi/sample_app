class CreateMissingInfos < ActiveRecord::Migration
  def change
    create_table :missing_infos do |t|
      t.string :textshort
      t.string :text

      t.timestamps
    end
  end
end
