class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home
  before_action :set_user, only: [:edit, :update]

  def home
  end

  def edit
  end

  def update
    @user.update(user_params)
    redirect_to bookings_path
  end

  private

  def set_user
    @user = User.find(params[:id])
  end

  def user_params
    params.require(:user).permit(:about, :photo)
  end
end
