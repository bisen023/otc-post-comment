class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :post
  has_many :likes, as: :likeable, dependent: :destroy

  validates_with MyValidator

  after_create :increment_comment_count
  after_destroy :desc_comment_count
  after_save :send_comment

  private

  def increment_comment_count
     comment_count = post.comments.reload.count
     post.update(comment_count: comment_count)
   end

  def desc_comment_count
     comment_count = post.comments.reload.count
     post.update(comment_count: comment_count)
  end


  def send_comment
    post_owner= post.user
    PostMailer.send_comment(post_owner, self).deliver_now
  end
end
