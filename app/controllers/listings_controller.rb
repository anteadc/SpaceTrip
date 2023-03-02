class ListingsController < ApplicationController
  skip_before_action :authenticate_user!, only: :home
  def home

  end

  def index
    @listings = Listing.all
  end

  def show
    @listing = Listing.find(params[:id])
    if @listing.geocoded?
      @marker =
        {
          lat: @listing.latitude,
          lng: @listing.longitude
        }
    end
  end

  def new
    @listing = Listing.new
  end

  def create
    permitted_params = listing_params
    permitted_params[:features] = permitted_params[:features].compact_blank
    @listing = Listing.new(permitted_params)
    @listing.user = current_user

    if @listing.save
      redirect_to listings_path
    else
      render 'listings/new', status: :unprocessable_entity
    end
  end

  def edit
    @listing = Listing.find(params[:id])
  end

  private

  def listing_params
    params.require(:listing).permit(:name, :photo, :rating, :description, :short_description, :price, :depart_date, :duration, :capacity, :launch_site, features: [])
  end
end
