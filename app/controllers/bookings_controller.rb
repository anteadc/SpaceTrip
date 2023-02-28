class BookingsController < ApplicationController

  def create
    @booking = Booking.new
    @booking.user_id = current_user.id
    @booking.listing_id = params[:listing_id]
    @booking.status = "unconfirmed"
    @booking.save
    redirect_to listings_path
  end

  private

  def booking_params
    params.require(:data).permit(:listing_id)
  end
end
