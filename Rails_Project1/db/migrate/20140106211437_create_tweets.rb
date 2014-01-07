class CreateTweets < ActiveRecord::Migration
  def up
     create_table :tweets do |t|
          t.text :body
          t.timestamps
  end

  def down
   drop_table :tweets    
    end
  end
end
