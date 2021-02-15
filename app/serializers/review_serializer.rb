class ReviewSerializer < ActiveModel::Serializer
    attributes :game, :game_name, :game_id, :id,:reviewed_game, :user_username, :user_id, :rating
    belongs_to :game
    belongs_to :user
  end
  