class AddCommentCountToPosts < ActiveRecord::Migration[8.0]
  def change
    add_column :posts, :comment_count, :integer
    change_column_default :posts, :comment_count, default: 0
  end
end
