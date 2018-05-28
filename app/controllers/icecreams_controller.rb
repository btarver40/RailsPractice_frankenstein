class IcecreamsController < ApplicationController
  def index
    @icecreams = Icecream.all
  end

  def show
    @icecream = Icecream.find(params[:id])
  end

  def new
    @icecream = Icecream.new
  end

  def create
    @icecream = Icecream.new(icecream_params)
    if @icecream.save
      redirect_to icereams_path
    else 
      render :new
    end
  end

  def edit
    @icecream = Icecream.find(params[:id])
  end

  def update
    @icecream = Icecream.fnd(params[:id])
    if @iceream.update(icecream_params)
      redirect_to icecreams_path
    else
      render :edit
    end
  end

  def destroy
    Icecream.find(params[:id])
    redirect_to icereams_path
  end

  private
  def icecream_params
    params.require(:icecream).permit(:flavor, :price)
  end
end
