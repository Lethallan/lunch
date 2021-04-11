class DishesController < ApplicationController
  before_action :find_dish, only: :show

  def show
  end

  private

  def dish_params
    params.require(:dish).permit(:title, :description, :price, :category_id)
  end
end
