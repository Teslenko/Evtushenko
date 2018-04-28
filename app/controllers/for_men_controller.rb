class ForMenController < ApplicationController
  before_action :set_for_man, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @for_men = ForMan.all

  end

  def show

  end

  def new
    @for_man = ForMan.new

  end

  def edit
  end

  # ######################################################################
  # def search
  #   @for_man = ForMan.ransack(name_cont: params[:q]).result(distinct: true).limit(2)
  #
  #   respond_to do |format|
  #     format.html{}
  #     format.json{}
  #   end
  # end
  # ######################################################################
  # def autocomplete
  #
  #   @for_man = ForMan.ransack(name_cont: params[:q]).result(distinct: true).limit(5)
  #
  #   respond_to do |format|
  #     format.html{}
  #     format.json {}
  #   end
  # end
  # ######################################################################

  def create
    @for_man = ForMan.new(for_man_params)

    respond_to do |format|
      if @for_man.save
        format.html { redirect_to @for_man, notice: 'Продукт успешно создан' }
        format.json { render :show, status: :created, location: @for_man }
      else
        format.html { render :new }
        format.json { render json: @for_man.errors, status: :unprocessable_entity }
      end
    end

  end

  def update
    respond_to do |format|
      if @for_man.update(for_man_params)
        format.html { redirect_to @for_man, notice: 'Продукт обновлен' }
        format.json { render :show, status: :ok, location: @for_man }
      else
        format.html { render :edit }
        format.json { render json: @for_man.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @for_man.destroy
    respond_to do |format|
      format.html { redirect_to @for_man_url, notice: 'Продукт удален' }
      format.json { head :no_content }
    end
  end

  private
    def set_for_man
      @for_man = ForMan.find(params[:id])
    end

    def for_man_params
      params.require(:for_man).permit(:name, :description, :avatar)
    end
end
