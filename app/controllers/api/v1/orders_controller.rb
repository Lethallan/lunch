class Api::V1::OrdersController < ApplicationController
  def index
    @orders = Order.where(perform_at: Date.today)
    render json: @orders, each_serializer: OrderCollectionSerializer
  end
end
