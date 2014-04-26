class WinesController < ApplicationController
  def index
  @wines = Wine.all
  end

before_action :set_wine, only: [:show, :edit, :update, :destroy]

def show
	@wines = Wine.find(params[:id])
end

def new
	@wines = Wine.new
end

def create
	@wines = Wine.new(wine_params)
	@wines.save
	redirect_to @wines
end

def destroy
	@wines = Wine.find(params[:id])
	@wines.destroy
	redirect_to @wines
end

def edit
	@wines = Wine.find(params[:id])
end

def update
	@wines = Wine.find(params[:id])
	@wines.update(wine_params)
	redirect_to @wines
end

private

def wine_params
	params.require(:wine).permit(:name, :year, :winery, :country, :varietal)
end

def set_wine
	@wines = Wine.find(params[:id])
 end
end 