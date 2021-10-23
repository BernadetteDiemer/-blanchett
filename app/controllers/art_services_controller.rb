class ArtServicesController < ApplicationController
 skip_before_action :authenticate_user!, only: :show

  def show
    @art_service = ArtService.find(params[:id])
  end

  def new
    @art_services = ArtService.new
  end

  def create
    @art_services = ArtService.new(art_services_params)
    if @art_services.save
      redirect_to art_service_path(@art_services)
    else
      render :new
    end
  end
  private

  def art_services_params
    params.require(:art_service).permit(:title, :description, :price, :address, :category, photos: [])
  end
end
