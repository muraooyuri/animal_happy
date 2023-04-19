class Animal < ApplicationRecord
  has_many :favorites, dependent: :destroy
  has_many :anima_comments, dependent: :destroy
  belongs_to :genre
  has_many :categories
  def favorited_by?(user)
    favorites.exists?(user_id: user.id)
  end
end
