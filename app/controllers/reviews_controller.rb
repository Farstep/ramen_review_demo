class ReviewsController < ApplicationController
  before_action :authenticate_user!, only: [:create]
  def index
    @ramen_shop = RamenShop.find(params[:ramen_shop_id])
    @reviews = @ramen_shop.reviews
  end

  def create
    @review = Review.new(review_params)
    @review.user_id = current_user.id
    if @review.save
      redirect_to ramen_shop_reviews_path(@review.ramen_shop)
    else
      @ramen_shop = RamenShop.find(params[:ramen_shop_id])
      render "ramen_shops/show"
    end
  end

  private
  def review_params
    params.require(:review).permit(:ramen_shop_id, :score, :content)
  end
end
