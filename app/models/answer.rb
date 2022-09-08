class Answer < ApplicationRecord
  belongs_to :user
  belongs_to :request
  has_one_attached :image
  validates :text, presence: true
  validates :image, presence: true
end
