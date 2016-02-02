class Category < ActiveRecord::Base
  validates :name, presence: true

  has_many :dishes, inverse_of: :category

  def to_s
    name
  end

  # def dishes_for_category(id)
  #   Dish.where(category_id: id).first.name
  # end
end