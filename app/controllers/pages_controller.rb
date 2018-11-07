class PagesController < ApplicationController
  def welcome
  end

  def show
    render params[:page]
  end

  def display
    @products = Product.all
  end
end
