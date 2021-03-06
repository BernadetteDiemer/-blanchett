class BookingsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:show, :home, :index]

  def home
  end

  def user_profile
    @user = User.find(params[:id])
  end

  def index
    policy_scope(Booking)
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
    @booking.status = "pending"
    authorize @booking
    if @booking.save!
      redirect_to bookings_path
    else
      render :new
    end
  end

  def update
    @art_service = ArtService.find(params[:art_service_id])
    @art_service.update(art_service_params)
    redirect_to art_service_path(@art_service)
  end

  def destroy
    @art_service = ArtService.find(params[:art_service_id])
    @art_service.destroy(art_service_params)
    redirect_to art_service_path(@art_service)
  end

  def update_status
    @booking = Booking.find(params[:id])
    authorize @booking
    if params[:status] == "cancelled"
      @booking.status = "cancelled"
      @booking.save
    else
      @booking.status = 'confirmed'
      @booking.save
    end
    redirect_to bookings_path
  end

  private


  def booking_params
    params.require(:booking).permit(:start_time, :end_time, :status)
  end
end
