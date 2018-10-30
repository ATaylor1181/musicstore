class PagesController < ApplicationController
  def welcome
  end

  def show
    render params[:page]
  end

end
