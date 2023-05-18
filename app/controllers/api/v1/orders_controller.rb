class Api::V1::OrdersController < ApplicationController
  before_action :set_order, only: %i[ show update destroy ]

  # GET /api/v1/orders
  # GET /api/v1/orders.json
  def index
    @orders = Order.all
    render json: @orders
  end

  # GET /api/v1/orders/1
  # GET /api/v1/orders/1.json
  def show
  end

  # POST /api/v1/orders
  # POST /api/v1/orders.json
  def create
    @order = Order.new(order_params)
    @order.calculate_total_price
    
    if @order.save
      render :show, status: :created, location: @order
    else
      render json: @order.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /api/v1/orders/1
  # PATCH/PUT /api/v1/orders/1.json
  def update
    if @order.update(order_params)
      render :show, status: :ok, location: @order
    else
      render json: @order.errors, status: :unprocessable_entity
    end
  end

  # DELETE /api/v1/orders/1
  # DELETE /api/v1/orders/1.json
  def destroy
    @order.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_order
      @order = Order.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def order_params
      params.require(:order).permit(:user_id, :product_id, :quantity, :total_price)
    end
end
