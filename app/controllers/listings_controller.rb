class ListingsController < ApplicationController
  skip_before_action :authenticate_user!, only: :home
  def home

  end

  def index
    @listings = Listing.all
  end

  def show
    @listing = Listing.find(params[:id])
  end

  def new
    @listing = Listing.new
  end

  def create
    @listing = Listing.new(listing_params)
    @listing.user_id = current_user.id
    @listing.save
    redirect_to listings_path
  end

  private
  def listing_params
    params.require(:listing).permit(:name, :photo, :rating, :description, :short_description, :price, :depart_date, :duration, :capacity)
  end
end
