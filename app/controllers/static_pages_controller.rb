class StaticPagesController < ApplicationController
  before_action :set_static_page, only: [:show]

    def home
    @products = Product.all
    @for_men = ForMan.all
    @for_women = ForWoman.all
  end

  def help
  end

  def about
  end

  def contact
  end

  def termsofexchange
  end

  def men
    @for_men = ForMan.all
  end

  def women
    @for_women = ForWoman.all
  end

  def adminka
  @products = Product.all
  @for_men = ForMan.all
  @for_women = ForWoman.all
  end

  private
  def set_women
    @for_woman = ForWoman.find(params[:id])
  end
  def women_params
    params.require(:static_page).permit(:name, :description, :avatar, :womanavtr, :image)
  end
end
