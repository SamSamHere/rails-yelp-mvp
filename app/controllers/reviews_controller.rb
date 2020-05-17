class ReviewsController < ApplicationController
  def new
    @new_review_restaurant = Restaurant.find(params[:restaurant_id])
    @new_review = @new_review_restaurant.reviews.build
    # An association instannce. same as @new_review.restaurant = @new_review_restaurant
  end

  def create
    # Dont need a view for create
    # Passing new Review info, whitelisting
    @create_review = Review.new(review_params)
    # pass the restaurant id
    @create_review.restaurant = Restaurant.find(params[:restaurant_id])
    # Can only create after you have everything// validations

    if @create_review.save # Returns T/F
      # Redirect to restaurants#show
      redirect_to restaurant_path(@create_review.restaurant)
    else
      # Go back to the form so that the user can see whats wrong with the from they filled
      render :new
    end
  end

  private

  def review_params
    params.require(:review).permit(:content, :rating)
  end

end
