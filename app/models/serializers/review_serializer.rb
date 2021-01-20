class ReviewSerializer < ActiveModel::Serializer
    attributes :reviewed_game, :game_name, :user_username, :game_id, :user_id, :rating
    belongs_to :game
    belongs_ :user
end

