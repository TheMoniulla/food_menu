class CommentsController < ApplicationController
  before_action :get_dish

  def new
    @comment = @dish.comments.new
  end

  def create
    @comment = @dish.comments.new(comment_params)
    if @comment.save
      redirect_to dish_path(@dish)
    else
      render :new
    end
  end

  private

  def get_dish
    @dish = Dish.find(params[:dish_id])
  end

  def comment_params
    params.require(:comment).permit(:text, :user_id, :dish_id)
  end
end
