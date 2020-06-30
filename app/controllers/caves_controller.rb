class CavesController < ApplicationController
  def index
    @caves = Cave.all
  end

  def show
    @cave = Cave.find(params[:id])
  end

  def new
    @cave = Cave.new
  end

  def create
    @cave = Cave.new(cave_params)
    @cave.save
    redirect_to user_cafe_path(@cave)
  end

  def edit
    @cave = Cave.find(params[:id])
  end

  def update
    @cave = Cave.find(params[:id])
    @cave.update(cave_params)
    redirect_to user_cafe_path(@cave)
  end



  def destroy
    @cave = Cave.find(params[:id])
    @cave.destroy

    # no need for app/views/restaurants/destroy.html.erb
    redirect_to all_user_caves_path
  end



private

  def cave_params
    params.require(:cave).permit(:name, :millesime, :rating)
  end

end
