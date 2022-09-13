class Request < ApplicationRecord
  belongs_to :user
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :sex
  has_many :answers
  has_many :favorites
end
