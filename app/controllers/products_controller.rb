class ProductsController < ApiController
  def index
    products = Product.where(true)

    if params[:product_type_id].present?
      products = products.where(product_type_id: product_type_id)
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
      else
        response[:status] = 500
        response[:message] = "Error al crear Producto:\n#{product.errors.full_messages.join("\n")}"
      end

      render json: response
  end
end
