class User < ApplicationRecord
    has_many :reviews
    has_many :games, through: :reviews
    has_secure_password
end
