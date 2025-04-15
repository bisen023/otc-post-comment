class PostMailer < ApplicationMailer
  default from: "bisen2310@gmail.com"
   def send_comment(post_owner, comment)
      @post_owner = post_owner
      @comment = comment
      @post = comment.post
      mail(to: @post_owner.email, subject: "You have a new comment on your post!")
   end
end
