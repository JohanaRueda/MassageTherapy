class UserMailer < ActionMailer::Base
    default from: "betty@massagebgalhouse.com"
    
    #def contact_email(contact, user)
    #    @user = user
    #    mail(from: @user.email, subject: 'Contact Email')
    #end
    
    #def welcome_email
    #mail(to: params[:user].email,
    #     body: params[:email_body],
    #     content_type: "text/html",
    #     subject: "Already rendered!")
    #end
end
