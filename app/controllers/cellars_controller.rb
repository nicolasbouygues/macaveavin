class CellarsController < ApplicationController
  def index
    @user = current_user
    @cellars = current_user.cellars
  end

  def show
    @cellar = Cellar.find(params[:id])
  end

  def new
    @cellar = Cellar.new
  end

  def create
    @user = current_user
    @cellar = Cellar.new(cellar_params)
    @cellar.user = @user
    @cellar.save
    redirect_to cellar_path(@cellar)
  end

  def edit
    @cellar = Cellar.find(params[:id])
  end

  def update
    @cellar = Cellar.find(params[:id])
    @cellar.update(cellar_params)
    redirect_to cellar_path(@cellar)
  end



  def destroy
    @cellar = Cellar.find(params[:id])
    @cellar.destroy

    # no need for app/views/restaurants/destroy.html.erb
    redirect_to cellars_path
  end

private

  def cellar_params
    params.require(:cellar).permit(:name, :user)
  end

end
