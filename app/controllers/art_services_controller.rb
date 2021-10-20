class ArtServicesController < ApplicationController
  skip_before_action :authenticate_user!, only: :show

  def show
    @art_service = ArtService.find(params[:id])
  end
end
