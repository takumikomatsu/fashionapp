class Favorite < ApplicationRecord
  belongs_to :user
  belongs_to :answer
  belongs_to :request
end
