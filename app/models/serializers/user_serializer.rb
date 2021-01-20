class UserSerializer < ActiveModel::UserSerializer
    attributes :id, :username
    has_many :reviews
    has_many :games, through: :reviews
end

