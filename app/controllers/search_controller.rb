class SearchController < ApplicationController


  def foos
    search do

      Foo.where :name => params[:q]

    end
  end

  def bars
    search do

      Bar.where :name => params[:q]

    end
  end

  private

  def search(&block)

    if params[:q]
      @product= yield if block_given?

      respond_to do |format|
        format.html # resources.html.erb
        format.json { render json: @product}
      end
    else
      redirect_to root_url, :notice => 'Запрос поиска не задан'
    end
  end
end
