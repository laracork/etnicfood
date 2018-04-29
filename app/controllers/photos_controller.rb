class PhotosController < ApplicationController

  def create
    @food = Food.find(params[:food_id])
    @food_photos.create(photo_params)
    redirect_to food_path(@food)
  end

  private

  def photo_params
    params.require(:photo).permit(:caption, :picture)
  end
end

