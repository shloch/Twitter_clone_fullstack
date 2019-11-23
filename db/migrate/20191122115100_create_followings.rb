class CreateFollowings < ActiveRecord::Migration[6.0]
  def change
    create_table :followings do |t|
      t.references :user, null: false, foreign_key: true
      t.integer :follower_id

      t.timestamps
    end
  end
end
