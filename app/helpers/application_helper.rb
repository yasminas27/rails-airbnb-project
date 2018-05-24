module ApplicationHelper
  def booking_price(booking)
    price_nights = booking.family.price_pppn * (booking.start_date - booking.end_date)
    raise
    total_price = price_nights * capacity
  end
end
