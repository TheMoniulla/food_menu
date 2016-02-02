class Admin::CategoriesController < Admin::AdminController
  def show
    @category = Category.find(params[:id])
  end
end