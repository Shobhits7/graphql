class User < ApplicationRecord
  has_many :movies, dependent: :destroy
end
