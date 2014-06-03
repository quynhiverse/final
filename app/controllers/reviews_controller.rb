class ReviewsController < ApplicationController

  def destroy
      reviews = Reviews.find_by("review_id" => params["id"])
      dress = Dress.find_by("dress_id" => reviews["dress_id"])
      reviews.delete
      redirect_to "/reviews/#{dress["dress_id"]}"
  end

  def create
      Review.create("dress_id" => params["dress_id"],
                    "review_rating" => params["review_rating"],
                    "review" => params["review"])
      redirect_to "/reviews"
  end

  def update
      review = Review.find_by("id" => params["id"])
      review.update("dress_id" => params["dress_id"],
                    "review_rating" => params["review_rating"],
                    "review" => params["review"])
      redirect_to "/reviews"
  end

end
