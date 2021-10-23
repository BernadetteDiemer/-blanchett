class BookingsController < ApplicationController
  skip_before_action :authenticate_user! # virna

  def new
    @booking = Booking.new(booking_params)
  end

  def create
    @booking = Booking.new(booking_params)
    authorize @booking
    @booking.user = current_user
    @booking.art_service = ArtService.find(params[:art_service_id])
    if @booking.save
      redirect_to booking_path(@booking)
    else
      redirect_to art_service_path(@artservice)
    end
  end

  private

  def set_booking
    @booking = Booking.find(params[:id])
  end

  def set_artservice
    @art_service = ArtService.find(params[artservice_id])
  end

  def booking_params
    params[:booking].permit(:start_time, :end_time, :status)
  end
end
