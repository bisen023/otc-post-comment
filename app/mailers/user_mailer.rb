class UserMailer < ApplicationMailer
  default from: "bisen2310@gmail.com"

  def welcome_email(user)
   @user = user
   attachments.inline["image1.jpeg"] = File.read(Rails.root.join("app/assets/images/image1.jpeg"))
   mail(to: @user.email, subject: "Welcome to My app")
  end

  def failed_error(users)
    user_failed = users
    mail(to: "bisen2310@gmail.com")
  end
end
