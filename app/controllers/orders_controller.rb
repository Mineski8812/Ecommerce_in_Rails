class OrdersController < BaseController
  before_action :find_product, only: [:order_request]
  before_action :find_order, only: [:destroy,:show_order]

  def index
    @orders = Order.all
  end


  def show_order

  end

  def order_request
    @order = Order.new
    @order.products_id = @product.id
    @order.client_id = current_user.id
  end

  def order_check
    @product = Product.find(params[:order][:products_id])
      #coger el valor del amount que viene por parametros
      a = Integer(params[:order][:Amount])

      if a > @product.cant
        redirect_to products_path, notice: "El pedido excede la cantidad de producto"
      else
        Order.create(Description:params[:order][:Description],Amount:params[:order][:Amount],products_id: params[:order][:products_id],client_id: current_user.id,user: current_user)
        thisYes = @product.cant - a

        if @product.update(cant: thisYes)
          redirect_to products_path, notice: "Pedido realizado correctamente"
        else
          redirect_to products_path, notice: "No se pudo actualizar el producto"
        end

      end
  end

  def destroy

    @product = Product.find(@order.products_id)
    order_cant = @order.Amount
    if @order.destroy
      product_cant = @product.cant + order_cant
      @product.update(cant: product_cant)
      redirect_to orders_path, notice: "Se elimino el pedido correctamente."
    else
      redirect_to orders_path, notice: "No se pudo eliminar el pedido"
    end
  end

  def find_product
    @product = Product.find(params[:id])
  end

  def find_order
    @order = Order.find(params[:id])
  end


end
