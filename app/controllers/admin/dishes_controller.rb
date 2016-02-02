class Admin::DishesController < Admin::AdminController
  before_action :get_dish, only: [:show, :edit, :destroy, :update]

  def index
    @dishes = Dish.all
  end

  def new
    @dish = Dish.new
  end

  def create
    @dish = Dish.new(dish_params)
    if @dish.save
      redirect_to admin_dishes_path
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @dish.update_attributes(dish_params)
      redirect_to admin_dishes_path
    else
      render :edit
    end
  end

  def destroy
    @dish.destroy
    redirect_to admin_dishes_path
  end

  def show
    @comments = @dish.comments
  end

  private

  def get_dish
    @dish = Dish.find(params[:id])
  end

  def dish_params
    params.require(:dish).permit(:name, :category_id, :recipe)
  end
end