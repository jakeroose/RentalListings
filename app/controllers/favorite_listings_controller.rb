class FavoriteListingsController < ApplicationController
  before_action :set_listing

  def create
    if Favorite.create(favorited: @listing, user: current_user)
      redirect_to @listing, notice: 'Listing has been added to favorites!'
    else
      redirect_to @listing, alert: 'Something has gone terribly wrong...'
    end
  end

  def destroy
    Favorite.where(favorited_id: @listing.id, user_id: current_user.id).first.try(:destroy)
    redirect_to @listing, notice: 'Listing has been removed from favorites'
  end

  private
  def set_listing
    @listing = Listing.find(params[:format] || params[:id])
  end
end
