class ProductsController < ApplicationController
  before_action :set_product, only: %i[ show edit update destroy product_orders]

  # GET /products or /products.json
  def index
     a = Product.all
    a.each do |product|
      if product.cant.nil?
        product.cant=0
      end
    end
    @products = a
  end

  def product_orders
    @orders = Order.where(products_id: @product.id).order(created_at: :asc)

  end
  # GET /products/1 or /products/1.json
  def show
  end

  # GET /products/new
  def new
    @product = Product.new
  end

  # GET /products/1/edit
  def edit
  end

  # POST /products or /products.json
  def create
    @product = Product.new(product_params)
    @product.created_by = current_user.id

    respond_to do |format|
      if @product.save
        format.html { redirect_to product_url(@product), notice: "El producto se creo correctamente." }
        format.json { render :show, status: :created, location: @product }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @product.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /products/1 or /products/1.json
  def update
    respond_to do |format|
      if @product.update(product_params)
        format.html { redirect_to product_url(@product), notice: "El producto fue actualizado correctamente." }
        format.json { render :show, status: :ok, location: @product }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @product.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /products/1 or /products/1.json
  def destroy
    @product.destroy

    respond_to do |format|
      format.html { redirect_to products_url, notice: "El producto fue eliminado satisfactoriamente." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_product
      @product = Product.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def product_params
      params.require(:product).permit(:Name, :EndingDate, :Description, :stock_id,:cant)
    end


end
