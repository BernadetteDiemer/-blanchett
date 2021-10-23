class BookingsController < ApplicationController

  def new
    @booking = Booking.new

  end

  def create
    @booking = Booking.new(booking_params)
# <<<<<<< HEAD
#     authorize @booking
#     @booking.user = current_user
#     @booking.art_service = ArtService.find(params[:art_service_id])
#     if @booking.save
#       redirect_to booking_path(@booking)
#     else
#       redirect_to art_service_path(@artservice)
#     end
#   end

#   private

#   def set_booking
#     @booking = Booking.find(params[:id])
#   end

#   def set_artservice
#     @art_service = ArtService.find(params[:art_service_id])
#   end

#   def booking_params
#     params[:booking].permit(:start_time, :end_time, :status)
#   end
# =======
    art_service = ArtService.find(params[:art_service_id])
    @booking.art_service = art_service

    if @booking.save
      redirect_to art_service_path(@art_services)
    else
      render :new
    end
  end
end
