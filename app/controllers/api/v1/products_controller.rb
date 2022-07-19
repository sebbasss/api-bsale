class Api::V1::ProductsController < ApplicationController

  # selecting all the products in the database and rendering them in json
  def index
    @products = ExternalProduct.all
    render json: @products
  end

  # finding the products searched in the URL, using methods defined in the model, rendering in json
  def show
    @products = ExternalProduct.search_by_name(params[:id])
    render json: @products
  end
end
