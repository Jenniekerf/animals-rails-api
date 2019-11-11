class AnimalsController < ApplicationController

  def index
    animals = Animal.all
    render json: animals
  end

  def show
    animal = Animal.find(params[:id])
    render json: animal
  end

  def create
    animal = Animal.new(animal_params)
    if animal.save
      render json: animal
    else
      render json: {status: 500, message: 'Animal could not be added'}
    end
  end

def update
  animal = Animal.new(animal_params)
  if animal.update
    render json: animal
  else
    render json: {status: 500, message: 'Animal could not be updated'}
  end
end

def destroy
  animal = Animal.find(params[:id])
  if animal.destroy
    render json: animal.id
  else
    render json: [status: 500, message: 'Animal could not be deleted']
  end
end

private

def animal_params
  params require(:animal).permit(:name, :size, :type, :color, :description)
end

end
