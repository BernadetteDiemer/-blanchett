class BookingsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:show, :home, :index]
  # before_action :set_booking, only: [:create]
  # before_action :booking_params, only: [:create]

  def index
    # @bookings = Booking.all
    @bookings = policy_scope(Booking)
  end

  def new
    @booking = Booking.new
    authorize @booking
  end

  def create
    @booking = Booking.new(booking_params)
    authorize @booking
    @booking.user = current_user
    art_service = ArtService.find(params[:art_service_id])
    @booking.art_service = art_service
    if @booking.save
      redirect_to bookings_path(@bookings)
    else
      render :new
    end
  end

  private

  # def set_booking
  #   @booking = Booking.find(params[:id])
  # end

  def booking_params
    params[:booking].require(booking_params)
  end
end
