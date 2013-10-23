class RenameRecordIdBoneMarrowTransplantation < ActiveRecord::Migration
  def up
    rename_column BoneMarrowTransplantation, :recordid, :journal_id
  end

  def down
  end
end
