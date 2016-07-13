class CreatePosts < ActiveRecord::Migration[5.0]
  def change
    create_table :posts do |t|
      t.string :post_content
      t.integer :user_id
      t.integer :room_id
      t.string :photo_id
      t.timestamps
    end
  end
end
