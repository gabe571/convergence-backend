class GamesController < ApplicationController
    def index
        games = Games.all
        render json: games
    end

    def show
        games = Game.find_by(params[:id])
        render json: game
    end
end