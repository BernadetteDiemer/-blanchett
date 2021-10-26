class BookingsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:show, :home, :index]


  def index
    @bookings = policy_scope(Booking)
  end

  def new
    @booking = Booking.new
    @art_service = ArtService.find(params[:art_service_id])
    authorize @booking
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.user = current_user
    art_service = ArtService.find(params[:art_service_id])
    @booking.art_service = art_service
    @booking.status = 1
    authorize @booking
    if @booking.save!
      redirect_to bookings_path
    else
      render :new
    end
  end

  private


  def booking_params
    params.require(:booking).permit(:start_time, :end_time, :status)
  end
end
