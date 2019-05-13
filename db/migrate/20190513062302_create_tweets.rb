class CreateTweets < ActiveRecord::Migration[5.2]
  def change
    create_table :tweets do |t|
      t.string :body
      t.string :text
      t.string :user_id
      t.string :integer

      t.timestamps
    end
  end
end
