class Admin::OrdersController < Admin::BaseController
  def index
    @orders = Order.where(perform_at: Date.today)
    @total_cost = 0
    @orders.each do |order|
      @total_cost += order.total_price.to_f
    end
  end
end
