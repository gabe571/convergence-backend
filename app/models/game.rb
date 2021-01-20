class Game < ApplicationRecord
    has_many :reviews
    has_many :users, through: :reviews
end
def self.find_game(params)
    where(:name => params[:name]).find_or_create do |game|
game.id = game[:game_id]
game.name = game_name[:game_name]
 end
end
