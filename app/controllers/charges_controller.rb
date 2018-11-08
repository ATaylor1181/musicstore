class ChargesController < ApplicationController
  def new
  end
  
  def create
    #lookup the product
    @instrument = Product.all
    @product = Product.find(params[:product_id])

    customer = Stripe::Customer.create(
      :email => params[:stripeEmail],
      :source  => params[:stripeToken]
    )
  
    charge = Stripe::Charge.create(
      :customer    => customer.id,
      :amount      => @product.price,
      :description => @product.title,
      :currency    => 'aud'
    )

    ProductMailer.with(user: current_user, product: @product).new_purchase.deliver_now
    @product.date_sold = DateTime.now
    @product.save

    order = Order.new
    order.buyer_id = current_user.id
    order.product_id = @product.id
    order.date_sold = @product.date_sold
    order.street_address = current_user.street_address
    order.postcode = current_user.postcode
    order.city = current_user.city
    order.country = current_user.country
    order.price = @product.price
    order.save

    @order = Order.find_by_product_id(params[:product_id])
    ProductMailer.with(product: @product, order: @order, user: current_user).sold_item.deliver_now
  
  rescue Stripe::CardError => e
    flash[:error] = e.message
    redirect_to new_charge_path
  end
end