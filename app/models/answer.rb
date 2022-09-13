class Answer < ApplicationRecord
  belongs_to :user
  belongs_to :request
  has_one_attached :image
  has_many :favorites, dependent: :destroy
  validates :text, presence: true
  validates :image, presence: true

  def favorited?(user)
    favorites.where(user_id: user.id).exists?
  end
end
