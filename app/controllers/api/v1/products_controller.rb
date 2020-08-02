class Api::V1::ProductsController < ApplicationController
  def index
    products = Product.all
    render json: products status: 200
  end

  def show
    product = Product.find_by(id: params[:id])
    render json: product status: 200
  end
end
