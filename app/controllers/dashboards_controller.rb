class DashboardsController < ApplicationController
  def index
    @dishes = Dish.all
    @categories = Category.all
  end
end
