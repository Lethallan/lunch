class OrdersController < ApplicationController
  before_action :find_order only: %i[show]

  def show
  end

  def new
    @order = Order.new
  end

  def create
    # @order = Order.new(order_params)
    # current_user.orders.new(order_params)

    # if @order.save
    #   redirect_to @order
    # else 
    #   render :new
    # end
  end

  private

  def find_order
  #   @order = Order.find(params[:id])
  # end

  # def order_params
  #   params.require(:order).permit
  # end
end
