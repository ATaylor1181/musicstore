class ProductMailer < ApplicationMailer
    def new_purchase
        @user = params[:user]
        @product = params[:product]
        mail(to: @user.email, subject: 'Thank you for your purchase!')
    end

    def sold_item
        @product = params[:product]
        mail(to: @product.user.email, subject: 'You have sold an item!')
    end
end
