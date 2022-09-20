class Request < ApplicationRecord
  belongs_to :user
  validates :text, presence: true
  validates :sex_id, numericality: { other_than: 1, message: "can't be blank" }
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :sex
  has_many :answers, dependent: :destroy
  has_many :favorites, dependent: :destroy
end
