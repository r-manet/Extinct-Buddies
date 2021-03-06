class AnimalsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]
  before_action :set_animal, only: [:show, :edit, :update, :destroy]

  def index
    # @animals = Animal.all
    # @animals = Animal.where.not(latitude: nil, longitude: nil)
    @animals = Animal.geocoded

    @markers = @animals.geocoded.map do |animal|
      {
        lat: animal.latitude,
        lng: animal.longitude,
        info_window: render_to_string(partial: "info_window", locals: { animal: animal }),
        image_url: helpers.asset_url('manuela_marker.png')
      }
    end
  end

  def show
    @animal = Animal.find(params[:id])
    @booking = Booking.new
  end

  def new
    @animal = Animal.new
  end

  def create
    @animal = Animal.new(animal_params)
    @animal.user = current_user
    if @animal.save
      redirect_to animal_path(@animal)
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @animal.user == current_user
      if @animal.update(animal_params)
        redirect_to animal_path(@animal)
      else
        render :edit
      end
    else
      return
    end
  end

  def destroy
    if @animal.user == current_user
      @animal.destroy
      redirect_to animals_path
    else
      return
    end
  end

  private

  def set_animal
    @animal = Animal.find(params[:id])
  end

  def animal_params
    params.require(:animal).permit(:description, :price, :species, :category, :name, :requirement, :habitat, :location, :age_ago, :photo)
  end

end
