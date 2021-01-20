class GamesController < ApplicationController
    def index
        games = Game.all
        render json: games
    end

    def show
        games = Game.find_by(params[:id])
        render json: game
    end

    def create
        game = Game.create(game_params)
        render json: game
    end

    def update
        game = Game.find(params[:id])
        game.update(game_params)
        game.save
        render json: game
    end

    def destroy
        game = Game.find(params[:id])
        game.destroy
        render json: {message: "Successfully Removed Game"}
    end

    private
    def game_params
        params.require(:game).permit(:name, :developer, :id)
    end
end