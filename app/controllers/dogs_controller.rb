class DogsController < ApplicationController
    def index
      @dogs = Dog.all
    end
  
    def show
      @dog = Dog.find(params[:id])
    end
  
    def new
      @dog = Dog.new
    end
  
  def create
    @dog = Dog.new(dog_params)
    if @dog.save
      redirect_to dogs_path
    else 
      render :new
    end
  end
  
  def edit
    @dog = Dog.find(params[:id])
  end
  
  def update
    @dog = Dog.fnd(params[:id])
    if @dog.update(dog_params)
      redirect_to dogs_path
    else
      render :edit
    end
  end
  
  def destroy
    Dog.find(params[:id])
    redirect_to dogs_path
  end
  
  private
  def dog_params
    params.require(:dog).permit(:breed, :gender, :price)
  end
end
