class ReviewsController < ApplicationController
  skip_after_action :verify_authorized
  before_action :set_art_service, only: [:new, :create, :destroy]

  def new
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    @review.user = current_user
    @review.art_service = @art_service

    if @review.save
      redirect_to art_service_path(@art_service)
    else
      render :new
    end
  end

  def destroy
    @review = Review.find(params[:id])
    @review.destroy
    redirect_to art_service_path(@review.art_service.id)
  end

  private

  def review_params
    params.require(:review).permit(:rating, :comment)
  end

  def set_art_service
    @art_service = ArtService.find(params[:art_service_id])
  end
end
