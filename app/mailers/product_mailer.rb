class ProductMailer < ApplicationMailer
    def new_purchase
        @user = params[:user]
        mail(to: @user.email, subject: 'Thank you for your purchase!')
      end
end
