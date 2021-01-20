class GameSerializer < ActiveModel::Serializer
    attributes :name, :developer, :image_url
    has_many :reviews
    has_many :users, through: :reviews
end
