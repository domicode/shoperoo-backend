class Api::V1::ProductsController < ApplicationController
  def index
    @products = Product.all
    render json: @products.to_json(methods: [
      :substitute,
      :has_season?,
      :water_score,
      :co2_score,
      :people_score,
      :energy_score,
      :total_score
    ])
  end
end
