class RenameRecordidToJournalIdInCytostaticDrugGiven < ActiveRecord::Migration
  def up
    rename_column CytostaticDrugGiven, :recordid, :journal_id
  end

  def down
  end
end
