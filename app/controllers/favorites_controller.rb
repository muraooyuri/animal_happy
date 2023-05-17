class FavoritesController < ApplicationController
  before_action :authenticate_user!

  def create
    @animal = Animal.find(params[:animal_id])
    favorite = current_user.favorites.new(animal_id: @animal.id)
    favorite.save
  end

  def destroy
    @animal = Animal.find(params[:animal_id])
    favorite = current_user.favorites.find_by(animal_id: @animal.id)
    favorite.destroy
  end
end
