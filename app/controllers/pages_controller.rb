class PagesController < ApplicationController
  def welcome
    @disable_header = true
  end

  def show
    render params[:page]
  end

  def display
    @products = Product.all
  end
end
