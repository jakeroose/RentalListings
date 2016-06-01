class UsersController < ApplicationController
  before_action :authenticate_user!
  def show
    @user = User.find(params[:id])
    @favorite_listings = @user.favorite_listings.page(params[:page])
  end
end
