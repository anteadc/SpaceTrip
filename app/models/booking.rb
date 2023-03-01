class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :listing
  # validates :start_date, presence: true
  # validates :end_date, presence: true
  # validate :end_date_after_start_date
  # validate :dates_available_for_listing
  # def end_date_after_start_date
  #   if end_date && start_date && end_date <= start_date
  #     errors.add(:end_date, "must be after the start date")
  #   end
  # end
  # def dates_available_for_listing
  #   if listing && start_date && end_date
  #     if listing.bookings.where("(start_date <= ? AND end_date >= ?) OR (start_date <= ? AND end_date >= ?)", start_date, start_date, end_date, end_date).any?
  #       errors.add(:base, "Listing is not available during selected dates")
  #     end
  #   end
  # end
end
