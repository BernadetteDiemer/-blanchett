class BookingsController < ApplicationController
  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    art_service = ArtService.find(params[:art_service_id])
    @booking.art_service = art_service

    if @booking.save
      redirect_to art_service_path(@art_services)
    else
      render :new
    end
  end
end
