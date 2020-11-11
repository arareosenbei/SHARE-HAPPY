class PlacesController < ApplicationController
  before_action :find, only: %i[show edit update destroy]

  def index
    @place = Place.all
  end

  def show; end

  def new
    @place = Place.new
  end

  def create
    @place = Place.new(place_params)
    @place.user_id = current_user.id
    if @place.save
      redirect_to places_path
    else
      redirect_back(fallback_location: root_path)
    end
  end

  def edit; end

  def update
    @place.update(place_params)
    redirect_to place_path(@place)
  end

  def destroy
    @place.destroy
    redirect_to place_path(@place)
  end

  private

  # before_actionで設定
  def find
    @place = Place.find(params[:id])
  end

  # ストロングパラメーター
  def place_params
    params.require(:place).permit(:name, :postal_code, :address, :introduction, :image)
  end
end
