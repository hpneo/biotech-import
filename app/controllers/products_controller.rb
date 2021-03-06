class ProductsController < ApiController
  def index
    if params[:product_type_id].present?
      products = Product.where(product_type_id: params[:product_type_id].to_i)
    else
      products = Product.all
    end

    response = {
      status: 200,
      products: products
    }

    render json: response
  end

  def show
    product = Product.find(params[:id])

    response = {
      status: 200,
      product: product
    }

    render json: response
  end

  def create
    product = Product.new(params.require(:product).permit(:product_type_id, :name, :quantity, :width, :height, :thickness))

    response = {}

    if product.save
      response[:status] = 200
      response[:message] = 'Producto creado correctamente'
      response[:product] = product
    else
      response[:status] = 500
      response[:message] = "Error al crear Producto:\n#{product.errors.full_messages.join("\n")}"
    end

    render json: response
  end

  def update
    product = Product.find(params[:id])

    product.quantity = product.quantity + params[:product][:quantity].to_i

    response = {}

    if product.save
      response[:status] = 200
      response[:message] = 'Producto actualizado correctamente'
      response[:product] = product
    else
      response[:status] = 500
      response[:message] = "Error al actualizar Producto:\n#{product.errors.full_messages.join("\n")}"
    end

    render json: response
  end
end
