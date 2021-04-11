class Admin::DishesController < Admin::BaseController
  before_action :find_dish, only: %i[show edit update]

  def index
    @dishes = Dish.all
  end

  def show
  end

  def new
    @dish = Dish.new
  end

  def create
    @dish = Dish.new(dish_params)

    if @dish.save
      redirect_to admin_dish_path(@dish)
    else  
     render :new
    end
  end

  def edit
  end

  def update
    if @dish.update(dish_params)
      redirect_to admin_dish_path(@dish)
    else  
     render :edit
    end
  end

  private

  def dish_params
    params.require(:dish).permit(:title, :description, :price, :category_id, :picture)
  end

  def find_dish
    @dish = Dish.find(params[:id])
  end
end