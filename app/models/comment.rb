class Comment < ActiveRecord::Base
  validates :text, :user_id, :dish_id,  presence: true

  belongs_to :user
  belongs_to :dish

  def created_at_for_display
    created_at.strftime("%Y-%m-%d %H:%M")
  end
end
