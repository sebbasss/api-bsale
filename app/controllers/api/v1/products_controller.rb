class Api::V1::ProductsController < ApplicationController

  def index
    @products = ExternalProduct.all
    render json: @products
  end

  def show
    @product = ExternalProduct.find_by!('id = ?', params[:id])
    render json: @product
  end
end
