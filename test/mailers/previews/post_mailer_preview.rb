# Preview all emails at http://localhost:3000/rails/mailers/post_mailer
class PostMailerPreview < ActionMailer::Preview
  # Preview this email at http://localhost:3000/rails/mailers/post_mailer/send_comment
  def send_comment
    PostMailer.send_comment
  end
end
