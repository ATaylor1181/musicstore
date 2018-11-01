class ProductMailer < ApplicationMailer
    def new_purchase
        @user = params[:user]
        @product = params[:product]
        mail(to: @user.email, subject: 'Thank you for your purchase!')
      end
end
