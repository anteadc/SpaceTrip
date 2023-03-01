class BookingsController < ApplicationController

  def create
    @booking = Booking.new
    @booking.user_id = current_user.id
    @listing = Listing.find(params[:listing_id])
    @booking.listing = @listing
    @booking.status = "unconfirmed"
    @booking.save
    redirect_to listing_booking_path(@listing, @booking)
  end

  def show
    @booking = Booking.find(params[:id])
    @listing = Listing.find(params[:listing_id])
  end

  private

  def booking_params
    params.require(:data).permit(:listing_id)
  end
end
