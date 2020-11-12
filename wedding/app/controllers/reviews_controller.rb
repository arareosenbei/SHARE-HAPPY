class ReviewsController < ApplicationController
    before_action :find, only: %i[show edit update destroy]

  def index
    @place = Place.find(params[:place_id])
  end
  
  def new
    @review = current_user.reviews.new
  end

  def create
    @review = current_user.reviews.new(review_params)
    redirect_to place_reviews_path
  end

  def edit
    
  end

  def update
  end

  def destroy
  end
  
  private
  def find
    @review = Review.find(params[:id])
  end
  
  def review_params
    params.require(:review).permit(:title, :body)
  end
end
