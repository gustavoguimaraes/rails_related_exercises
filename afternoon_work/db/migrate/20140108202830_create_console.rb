class CreateConsole < ActiveRecord::Migration
  def change
    create_table :consoles do |t|
      t.string :console_name
      t.integer :game_id
    end
  end

end
