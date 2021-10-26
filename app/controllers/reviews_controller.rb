class ReviewsController < ApplicationController
  def new
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    art_service = ArtService.find(params[:art_service_id])
    @review.art_service = art_service

    if @review.save
      redirect_to art_service_path(@art_services)
    else
      render :new
    end
  end

  private

  def review_params
    params.require(:review).permit(:rating, :comment)
  end
end
