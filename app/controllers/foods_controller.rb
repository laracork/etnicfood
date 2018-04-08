class FoodsController < ApplicationController

  def index
    @foods = Food.all
  end

  def new
    @foods = Food.new
  end

  def create
    Food.create(food_params)
    redirect_to root_path
  end

  private

  def food_params
    params.require(:food).permit(:name, :description, :country)
  end

end
