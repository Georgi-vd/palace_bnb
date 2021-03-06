class PalacesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]
  def index
    # @palaces = Palace.all
    @palaces = Palace.geocoded #returns flats with coordinates

    @markers = @palaces.map do |pal|
      {
        lat: pal.latitude,
        lng: pal.longitude,
        infoWindow: render_to_string(partial: "info_window", locals: { palace: pal })
      }
    end
  end

  def show
    @palace = Palace.find(params[:id])
    @booking = Booking.new
  end

  def new
    @palace = Palace.new
  end

  def create
    #@palace = Palace.new(palace_params)
    #@palace.user = current_user

    @palace = current_user.palaces.build(palace_params)
    if @palace.save
      redirect_to palace_path(@palace)
    else
      render 'new'
    end
  end

  def edit
    @palace = Palace.find(params[:id])
  end

  def update
    @palace = Palace.find(params[:id])
    @palace.update(palace_params)
    redirect_to palace_path(@palace)
  end

  def destroy
    @palace = Palace.find(params[:id])
    @palace.destroy
    redirect_to palaces_path
  end

  private

  def palace_params
    params.require(:palace).permit(:name, :description, :price, :location, photos: [])
  end
end
