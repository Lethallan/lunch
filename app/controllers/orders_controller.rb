class OrdersController < ApplicationController
  def new
    @order = current_user.orders.new
  end

  def create
    @order = OrdersService.new(order_params).call

    if @order.save
      redirect_to root_path
    else
      render :new
    end
  end

  private

  def order_params
    params.require(:order)
          .permit(
            :user_id,
            :first_course,
            :main_course,
            :drink,
            :date
          )
  end
end
