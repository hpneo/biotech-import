class SalesController < ApiController
  def create
    sale = Sale.new(params.require(:sale).permit(:product_id, :contact_id, :quantity, :price))
    sale.user = current_user

    puts sale.to_json

    response = {}

    if sale.quantity > sale.product.quantity
      response[:status] = 500
      response[:message] = "Error al crear Venta:\nNo se pueden vender más productos de los existentes"
    elsif sale.save
      response[:status] = 200
      response[:message] = 'Venta creada correctamente'
    else
      response[:status] = 500
      response[:message] = "Error al crear Venta:\n#{sale.errors.full_messages.join("\n")}"
    end

    render json: response
  end

  def index
    sales = Sale.where(user_id: current_user.id)

    response = {
      status: 200,
      sales: sales.map { |sale| SaleSerializer.new(sale) }
    }

    render json: response
  end
end
