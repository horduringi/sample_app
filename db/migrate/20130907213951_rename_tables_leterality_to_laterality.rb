class RenameTablesLeteralityToLaterality < ActiveRecord::Migration
    def change
        rename_table :latarelity_rlbus, :laterality_rlbus
    end 
end
