class WinesController < ApplicationController
  def index
    @wines = Wine.all
  end

  def show
    @wine = Wine.find(params[:id])
  end

  def new
    @wine = Wine.new
  end

  def create
    @user = current_user
    @wine = Wine.new(wine_params)
    @wine.user = @user
    @wine.save
    redirect_to user_wine_path(@wine)
  end

  def edit
    @wine = Wine.find(params[:id])
  end

  def update
    @wine = Wine.find(params[:id])
    @wine.update(wine_params)
    redirect_to user_wine_path(@wine)
  end



  def destroy
    @wine = Wine.find(params[:id])
    @wine.destroy

    # no need for app/views/restaurants/destroy.html.erb
    redirect_to all_user_wines_path
  end



private

  def wine_params
    params.require(:wine).permit(:name, :millesime, :rating)
  end

end
