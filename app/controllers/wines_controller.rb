class WinesController < ApplicationController
  def index
    @wines = Wine.all
  end

  def show
    @wine = Wine.find(params[:id])
  end

  def new
    @cellar = Cellar.find(params[:cellar_id])
    @wine = Wine.new
  end

  def create
    @user = current_user
    @wine = Wine.new(wine_params)
    @cellar = Cellar.find(params[:cellar_id])
    @wine.cellar = @cellar
    @wine.user = @user
    @wine.save
    redirect_to cellar_path(@cellar)
  end

  def edit
    @cellar = Cellar.find(params[:cellar_id])
    @wine = Wine.find(params[:id])
  end

  def update
    @cellar = Cellar.find(params[:cellar_id])
    @wine = Wine.find(params[:id])
    @wine.update(wine_params)
    redirect_to wine_path(@wine)
  end



  def destroy
    @wine = Wine.find(params[:id])
    @wine.destroy

    # no need for app/views/restaurants/destroy.html.erb
    redirect_to cellar_wines_path
  end



private

  def wine_params
    params.require(:wine).permit(:name, :millesime, :rating, :domaine, :garde)
  end

end
