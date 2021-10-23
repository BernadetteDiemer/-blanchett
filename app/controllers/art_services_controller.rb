class ArtServicesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:show, :home, :index]
  before_action :set_art_service, only: [:show, :edit, :update, :destroy]

  def index
    # @art_services = ArtService.all
    @art_services = policy_scope(ArtService).order(created_at: :desc)
  end

  def show
    @markers = @art_service.geocoded.map do |service|
      {
        lat: service.latitude,
        lng: service.longitude
      }
    end
  end

  def new
    @art_service = ArtService.new
    authorize @art_service
  end

  def create
    @art_services = ArtService.new(art_services_params)
    @art_services.user = current_user
    authorize @art_services
    if @art_services.save
      redirect_to art_service_path(@art_services)
    else
      render :new
    end
  end

  def edit
  end

  def update
    @art_service.update(art_services_params)
    redirect_to art_service_path(@art_service)
  end

  def destroy
    @art_service.destroy
    redirect_to art_services_path
  end

  private

  def art_services_params
    params.require(:art_service).permit(:title, :description, :price, :address, :category, photos: [])
  end

  def set_art_service
    @art_service = ArtService.find(params[:id])
    authorize @art_service
  end
end
