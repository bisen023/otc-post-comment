class CreatePosts < ActiveRecord::Migration[8.0]
  def change
    create_table :posts do |t|
      t.string :title
      t.string :description
      t.integer :user_id
      # t.string :description_first
      t.timestamps
    end
  end
end
