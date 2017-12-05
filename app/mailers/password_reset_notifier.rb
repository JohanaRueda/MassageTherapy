class PasswordResetNotifier < ActionMailer::Base
   default from: "massagebgalhouse@gmail.com"
  def password_reset_instructions(user)
    @url  = edit_password_reset_url(token: user.perishable_token)

    mail(to: user.email, subject: "Password Reset Instructions")
  end
end