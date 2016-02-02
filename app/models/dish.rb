class Dish < ActiveRecord::Base
  validates :name, :category_id, :recipe, presence: true

  has_many :comments
  belongs_to :category, inverse_of: :dishes

end