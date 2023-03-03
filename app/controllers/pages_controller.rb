class PagesController < ApplicationController

  def dashboard
    @bookings = Booking.where(user_id: current_user.id)
  end

  def faq

  end

  def testimonials

  end

  def requests

    @bookings = Booking.joins(listing: :user).where(users: { id: current_user })

  end
  def payment


  end

  def paymentdone
    @booking = Booking.where(user_id: current_user.id)
    @booking[0].status = "paid"
    @booking[0].save
  end
end
