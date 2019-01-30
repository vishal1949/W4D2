class CatsController < ApplicationController
  def index
    @cats = Cat.all
  end

  def show
    @cat = Cat.find(params[:id])
  end
  
  def new
    @cat = Cat.new

  end
  def create
    @cat = Cat.new(cat_params)
    
    if @cat.save
      redirect_to cats_url

    end

  end

  def update
    @cat = Cat.find(params[:id])
    if cat.update(cat_params)
      redirect_to cats_url(cat)
    end
  end

  def edit
    @cat = Cat.find(params[:id])
  end
  
  private
  def cat_params
    params.require(:cat).permit(:name,:birth_date,:color,:description,:sex)
  end
end
