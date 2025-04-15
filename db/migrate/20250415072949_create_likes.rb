class CreateLikes < ActiveRecord::Migration[8.0]
  def change
    create_table :likes do |t|
      t.timestamps
      t.integer :user_id
      t.integer :likeable_id
      t.string  :likeable_type
    end
  end
end
