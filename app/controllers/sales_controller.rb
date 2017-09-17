class SalesController < ApplicationController
  def create
    sale = Sale.new(params.require(:sale).permit(:product_id, :quantity, :price))

    response = {}

    if sale.save
      response[:status] = 200
      response[:message] = 'Venta creada correctamente'
    else
      response[:status] = 500
      response[:message] = "Error al crear Venta:\n#{sale.errors.full_messages.join("\n")}"
    end

    render json: response
  end
end