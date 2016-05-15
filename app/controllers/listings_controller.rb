class ListingsController < ApplicationController
  before_action :find_listing, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, except: [:index, :show]
  load_and_authorize_resource

  def index
    @search = Listing.ransack(params[:q])
    @listings = @search.result
  end

  def show
  end

  def new
    @listing = Listing.new
  end

  def create
    @listing = Listing.new(listings_params)

    if @listing.save
      redirect_to @listing
    else
      render "new"
    end
  end

  def edit
  end

  def update
    if @listing.update(listings_params)
      redirect_to @listing
    else
      render "edit"
    end
  end

  def destroy
    @listing.destroy
    redirect_to root_path
  end

  private

  def listings_params
    params.require(:listing).permit(:title, :description, :address, :bed, :bath, :half_bath, :square_foot, :max_price, :min_price, :image, :appliances, :features, :schools, :pets, :property_type, images_files: [])
  end

  def find_listing
    @listing = Listing.find(params[:id])
  end
end
