class ArtServicesController < ApplicationController
  def show
    @art_service = ArtService.find(params[:id])
  end
end
