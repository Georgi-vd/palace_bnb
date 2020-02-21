class BookingsController < ApplicationController
  def index
    @bookings = Booking.all.where(user: current_user)
  end

  def new
    @palace = Palace.find(params[:palace_id])
    @booking = @palace.bookings.build
  end

  def create
    @booking = Booking.new(booking_params)
    @palace = Palace.find(params[:palace_id])
    @booking.user = current_user
    @booking.palace = @palace
    if @booking.save
      redirect_to bookings_path
    else
      render 'palaces/show'
    end
  end

  def destroy
  end

  private

  def booking_params
    params.require(:booking).permit(:arrival_date, :departure_date)
  end
end

