class RenameOldTable < ActiveRecord::Migration
  def change
    rename_table :console, :consoles
  end
end
