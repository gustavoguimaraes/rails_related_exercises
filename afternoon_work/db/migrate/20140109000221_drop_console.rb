class DropConsole < ActiveRecord::Migration
    def change
    drop_table :consoles
    end

end
