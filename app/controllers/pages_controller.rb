class PagesController < ApplicationController

  def dashboard
    @bookings = Booking.where(user_id: current_user.id)
  end

  def faq

  end

  def testimonials

  end

end
