module ApplicationHelper
  def booking_price(booking)
    price_nights = booking.family.price_pppn * (booking.start_date - booking.end_date)
    total_price = price_nights * capacity
    raise
  end
end
