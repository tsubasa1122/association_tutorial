class CreateComments < ActiveRecord::Migration[5.2]
  def change
    create_table :comments do |t|
      t.string :body
      t.string :user_id
      t.string :integer
      t.string :tweet_id
      t.string :integer

      t.timestamps
    end
  end
end
