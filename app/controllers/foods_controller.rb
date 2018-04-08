class FoodsController < ApplicationController

  def index
    @foods = Food.order("name")
  end

  def new
    @foods = Food.new
  end

  def create
    Food.create(food_params)
    redirect_to root_path
  end

  def show
    @food = Food.find(params[:id])
    @photo = Photo.new
  end

  private

  def food_params
    params.require(:food).permit(:name, :description, :country)
  end

end
