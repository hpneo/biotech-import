class ProductTypesController < ApplicationController
  def index
    product_types = ProductType.all

    response = {
      status: 200,
      product_types: product_types
    }

    render json: response
  end
end
