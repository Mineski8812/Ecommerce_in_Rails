class StocksController < BaseController

  before_action :find_stock, only: [:show,:edit,:update,:destroy,:products_list]

  def index

     @stocks= Stock.includes(:shop).references(:shop).all.order(:Name)
    # stocks = Stock.includes(:shop).references(:shop).all.order(:Name)
    # data = get_data(stocks)
    # @result = generate_json(1,100,stocks.size,data,[])

  end

  def new
    @stock = Stock.new

  end

  def destroy
    @stock.destroy
    redirect_to stocks_path
  end

  def create
    # Stock.create(Name:params[:stock][:Name],Description:params[:stock][:Description],shop_id: params[:stock][:shop_id],created_by: current_user.id)
    stock_obj = Stock.new(stock_params)
    stock_obj.created_by = current_user.id
    if stock_obj.save
       redirect_to stocks_path, notice: "El almacen se guardo correctamente"
    else
       redirect_to new_stock_path, alert:  "Existen problemas para añadir el almacen"
    end

  end

  def show
  end

  def edit

  end

  def update
    @stock.update(Name:params[:stock][:Name],Description:params[:stock][:Description],shop_id: params[:stock][:shop_id])
    redirect_to stocks_path
  end

  def find_stock
    @stock = Stock.includes(:shop).references(:shop).find(params[:id])
  end

  def products_list
    @products = Product.where(stock_id: @stock.id).order(created_at: :asc)
  end

  def stock_params
    params.require(:stock).permit(:Name,:Description,:shop_id)
  end

  private
  def get_data(data)
    info = []
    data.each do |obj|
      t = {
        id: obj.id,
        name: obj.Name,
        description: obj.Description,
        store: obj.shop&.Name || ""
      }
      info << t
    end
      info
  end

  def generate_json(page, count_by_page,total_count,data,errors)
    {
    results: {
      table_name:"Lista de almacenes",
      header:['Nombreeee','Descripcion','Tienda'],
      rows: %w(name description store),
      page: page,
      count_by_page: count_by_page,
      total_count: total_count,
      data_content: data,
      errors: errors
    }
  }.to_json

  end
end
