class ProductsController < ApplicationController
  
  def index
  end

  def new
  end

  def show
   @product = find(params[:id])
   render controller:  "ImageController", action:  "show"

  end

end
