class ReviewsController < ApplicationController
  before_action :authenticate_user!, only: [:create]
  def index
    @ramen_shop = RamenShop.find(params[:ramen_shop_id])
    @reviews = @ramen_shop.reviews
  end

  def create
    @review = Review.new(review_params)
    @review.score = params[:review][:score]
    @review.ramen_shop_id = params[:review][:ramen_shop_id]
    @review.user_id = current_user.id
    if @review.save
      redirect_to ramen_shops_path
    else
      @ramen_shop = RamenShop.find(params[:ramen_shop_id])
      render "ramen_shops/show"
    end
  end

  private
  def review_params
    params.require(:review).permit(:content)
  end
end
