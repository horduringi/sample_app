class AddMalignantBoneTumorTypeOtherSpecToJournal < ActiveRecord::Migration
  def change
    add_column :journals, :malignantbonetumortypeotherspec, :string
    add_column :journals, :string, :string
  end
end
