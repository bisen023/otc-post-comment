class AddDestriptionFirstToPosts < ActiveRecord::Migration[8.0]
  def change
    add_column :posts, :description_first, :string
  end
end
