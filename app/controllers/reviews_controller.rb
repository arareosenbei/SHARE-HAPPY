class ReviewsController < ApplicationController
  before_action :find, only: %i[show edit update destroy]

  def index
    @place = Place.find(params[:place_id])
    user = current_user
    @review = user.reviews.find_by(params[:id])
  end

  def new
    @review = current_user.reviews.new
    @place = Place.find(params[:place_id])
  end

  def create
    @review = current_user.reviews.new(review_params)
    @review.place_id = params[:place_id]
    @review.save
    redirect_to place_reviews_path
  end

  def edit
    @place = @review.place
  end

  def update
    @review.save(review_params)
    redirect_to place_reviews_path
  end

  def destroy
    @review.destroy
    redirect_to place_reviews_path
  end

  private

  def find
    @review = Review.find(params[:id])
  end

  # ストロングパラメーター
  def review_params
    params.require(:review).permit(:title, :body, :rate, :place_id, :user_id)
  end
end
