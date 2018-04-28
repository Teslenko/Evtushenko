class ProductsController < ApplicationController
  before_action :set_product, only: [:show, :edit, :update, :destroy]

  # respond_to :html

  def index
    @products = Product.all

  end

  def show

    @products = Product.all
  end

  def new
    @product = Product.new

  end

  def edit
  end

  ######################################################################
  def search
    @products = Product.ransack(name_cont: params[:q]).result(distinct: true).limit(2)
    @for_man = ForMan.ransack(name_cont: params[:q]).result(distinct: true).limit(2)
    @for_woman = ForWoman.ransack(name_cont: params[:q]).result(distinct: true).limit(2)

    respond_to do |format|
      format.html {}
      format.json {}
    end
  end
  ######################################################################
  def autocomplete

    @products = Product.ransack(name_cont: params[:q]).result(distinct: true).limit(5)
    @for_man = ForMan.ransack(name_cont: params[:q]).result(distinct: true).limit(5)
    @for_woman = ForWoman.ransack(name_cont: params[:q]).result(distinct: true).limit(5)

    respond_to do |format|
      format.html {}
      format.json {}
    end
  end
  ######################################################################

  def create
    @product = Product.new(product_params)

    respond_to do |format|
      if @product.save
        format.html { redirect_to @product, notice: 'Продукт успешно создан' }
        format.json { render :show, status: :created, location: @product }
      else
        format.html { render :new }
        format.json { render json: @product.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @product.update(product_params)
        format.html { redirect_to @product, notice: 'Продукт обновлен' }
        format.json { render :show, status: :ok, location: @product }
      else
        format.html { render :edit }
        format.json { render json: @product.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @product.destroy
    respond_to do |format|
      format.html { redirect_to products_url, notice: 'Продукт удален' }
      format.json { head :no_content }
    end
  end

  private
    def set_product
      @product = Product.find(params[:id])
    end

  def product_params
    params.require(:product).permit(:name, :description, :image)
  end


end
