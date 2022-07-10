class Api::V1::ProductsController < ApplicationController

  def index
    @products = ExternalProduct.all
    render json: @products
  end

  def show
    @products = ExternalProduct.where("name LIKE ?", "%" + "#{params[:id]}" + "%")
    render json: @products

  end
end
