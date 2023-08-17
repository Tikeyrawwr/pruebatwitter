class CreateTweets < ActiveRecord::Migration[7.0]
  def change
    create_table :tweets do |t|
      t.text :description
      t.string :username, limit: 50  

      t.timestamps
    end
  end
end