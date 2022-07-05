class Api::V1::CategoriesController < ApplicationController

  def show
    @category = ExternalCategory.find_by('name = ?', params[:id])
    @products = ExternalProduct.where('category = ?', @category.id)
    render json: @products
  end
end
