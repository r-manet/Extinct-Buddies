class AnimalsController < ApplicationController
  # before_action :set_animal

  def index
    @animals = Animal.all
  end

  private

  def set_animal
    @animal = Animal.find(params[:id])
  end

  def animal_params
    params.require(:animal).permit(:description, :price, :species, :category, :name, :requirement, :habitat, :location, :age_ago)
  end
end
