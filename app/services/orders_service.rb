class OrdersService
  def initialize(params)
    @order = Order.new
    @params = params
  end

  def call
    form_order
    count_total_price
    set_order_date
    set_user

    @order
  end

  private

  def form_order
    @order.dishes.push(
      Dish.find(@params[:first_course]), 
      Dish.find(@params[:main_course]), 
      Dish.find(@params[:drink])
    )
  end

  def count_total_price
    @order.total_price = @order.dishes.inject(0) { |sum, dish| sum + dish.price }
  end

  def set_order_date
    @order.perform_at = @params[:date].to_date
  end

  def set_user
    @order.user_id = @params[:user_id]
  end
end
