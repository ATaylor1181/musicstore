class ProductMailer < ApplicationMailer
    def welcome_email
        @user = params[:user]
        mail(to: @user.email, subject: 'Thank you for your purchase!')
      end
end
