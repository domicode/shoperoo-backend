class Api::V1::ProductsController < ApplicationController
  def index
    @products = Product.all
    render json: @products.to_json(methods: [:substitute, :has_season?])
  end
end
