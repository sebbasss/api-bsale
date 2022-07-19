class Api::V1::CategoriesController < ApplicationController

  # selecting all the categories in the database and rendering them in json
  def index
    @category = ExternalCategory.all
    render json: @category
  end

  # finding the products searched in the URL according to the name of the category entered
  # using methods defined in the model, rendering in json
  def show
    @category = ExternalCategory.search_by_name(params[:id])
    @products = ExternalProduct.search_by_category(@category.id)
    render json: @products
  end
end
