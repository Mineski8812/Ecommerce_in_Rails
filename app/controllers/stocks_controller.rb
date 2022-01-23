class StocksController < BaseController

  before_action :find_stock, only: [:show,:edit,:update,:destroy,:products_list]

  def index
    @stocks = Stock.all
  end

  def new
    @stock = Stock.new

  end

  def destroy
    @stock.destroy
    redirect_to stocks_path
  end

  def create
    Stock.create(Name:params[:stock][:Name],Description:params[:stock][:Description],shop_id: params[:stock][:shop_id],created_by: current_user.id)
    redirect_to stocks_path
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
    @stock = Stock.find(params[:id])
  end

  def products_list
    @products = Product.where(stock_id: @stock.id).order(created_at: :asc)
  end
end
