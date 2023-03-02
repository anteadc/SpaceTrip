class BookingsController < ApplicationController

  def create
    @booking = Booking.new
    @booking.user_id = current_user.id
    @listing = Listing.find(params[:listing_id])
    @booking.listing = @listing
    @booking.status = "unconfirmed"
    @booking.save
    redirect_to dashboard_path
  end

  def show
    @booking = Booking.find(params[:id])
    @listing = Listing.find(params[:listing_id])
  end

  def update
   @booking = Booking.find(params[:id])

   if params[:status] === "confirmed"
      @booking.status = "confirmed"
      @booking.save
      redirect_to requests_path

   elsif params[:status] === "declined"
      @booking.status = "declined"
      @booking.save

      redirect_to requests_path
   end


  end

  private

  def booking_params
    params.require(:data).permit(:listing_id)
  end
end
