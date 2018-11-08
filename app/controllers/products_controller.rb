class ProductsController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]
  before_action :set_product, only: [:show, :edit, :update, :destroy]
  before_action :check_user, only: [:profile]

  # GET /products
  # GET /products.json
  def index
    @products = Product.all
  end

  # GET /products/1
  # GET /products/1.json
  def show
  end

  # GET /products/new
  def new
    @product = Product.new
  end

  # GET /products/1/edit
  def edit
  end

  def profile
    @products = Product.all
  end

  # POST /products
  # POST /products.json
  def create
    @product = Product.new(product_params)
    @product.user = current_user
    @product.category_id = Subcategory.find_by_instrument(@product.category).id

    respond_to do |format|
      if @product.save
        format.html { redirect_to @product, notice: 'Product was successfully created.' }
        format.json { render :show, status: :created, location: @product }
      else
        format.html { render :new }
        format.json { render json: @product.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /products/1
  # PATCH/PUT /products/1.json
  def update
    respond_to do |format|
      if @product.update(product_params)
        format.html { redirect_to @product, notice: 'Product was successfully updated.' }
        format.json { render :show, status: :ok, location: @product }
      else
        format.html { render :edit }
        format.json { render json: @product.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /products/1
  # DELETE /products/1.json
  def destroy
    @product.destroy
    respond_to do |format|
      format.html { redirect_to root_path, notice: 'Product was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def search
    @q = "%#{params[:query]}%"
    @products = Product.where("title iLIKE ? or description iLIKE ? or category iLIKE ? or city iLike ? or country iLike ?", @q, @q, @q, @q, @q)
    render 'index'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_product
      @product = Product.find(params[:id])
    end

    def check_user
      if "/products/profile/#{current_user.id}" != "/products/profile/#{params[:id]}"
        redirect_to "/products/profile/#{current_user.id}"
      end
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def product_params
      params.require(:product).permit(:title, :description, :price, :image, :category, :subcategory, :city, :country, :sell_internationally, :condition)
      
      result =  params.require(:product).permit(:title, :description, :price, :image, :category, :subcategory, :city, :country, :sell_internationally, :condition)
      result[:price] = result[:price].to_f * 100.0
      result
    end

    
end
