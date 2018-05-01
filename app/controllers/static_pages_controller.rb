class StaticPagesController < ApplicationController
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
end
