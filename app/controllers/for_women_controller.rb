class ForWomenController < ApplicationController
  before_action :set_for_woman, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @for_women = ForWoman.all

  end

  def show

  end

  def new
    @for_woman = ForWoman.new

  end

  def edit
  end

  def create
    @for_woman = ForWoman.new(for_woman_params)
    respond_to do |format|
      if @for_woman.save
        format.html { redirect_to @for_woman, notice: 'Продукт успешно создан' }
        format.json { render :show, status: :created, location: @for_woman }
      else
        format.html { render :new }
        format.json { render json: @for_woman.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @for_woman.update(for_woman_params)
        format.html { redirect_to @for_woman, notice: 'Продукт обновлен' }
        format.json { render :show, status: :ok, location: @for_woman }
      else
        format.html { render :edit }
        format.json { render json: @for_woman.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @for_woman.destroy
    respond_to do |format|
      format.html { redirect_to for_women_path, notice: 'Продукт удален' }
      format.json { head :no_content }
    end
  end

  private
    def set_for_woman
      @for_woman = ForWoman.find(params[:id])
    end

    def for_woman_params
      params.require(:for_woman).permit(:name, :description, :womanavtr)
    end
end
