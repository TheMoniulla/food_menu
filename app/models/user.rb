class User < ActiveRecord::Base
  validates :name, presence: true

  has_many :comments

  def to_s
    name
  end
end