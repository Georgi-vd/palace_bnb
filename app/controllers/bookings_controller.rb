class BookingsController < ApplicationController
  def new
    @palace = Palace.find(params[:palace_id])
    @booking = @palace.bookings.build
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.palace = @palace
    if @booking.save
      redirect_to booking_path(@booking)
    else
      render 'new'
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:arrival_date, :departure_date)
  end
end

