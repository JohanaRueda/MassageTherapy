class ExampleMailer < ActionMailer::Base
    default from: "betty@massagebgalhouse.com"
    
    def sample_email(user)
        @user = user
        @url  = 'https://massagebgalhouse.herokuapp.com/courses'
        mail(to: @user.email, subject: 'Sample Email')
    end
end
