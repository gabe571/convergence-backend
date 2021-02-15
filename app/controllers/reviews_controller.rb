class ReviewsController < ApplicationController
    # before_action :authorized, only:[:create]
    before_action :authenticate_with_http_digest, only: [:new, :create]

    def index
        reviews = Review.all
        render json: reviews
    end

    def show
        review = Review.find_by(params[:id])
        render json: review
    end

    def create
        game = Game.find_or_create_by(name: params[:review][:game_name])
        review = Review.new(review_params)
        review.game_id = game.id
        review.user_id = @user.id
        review.save
        render json: review
    end

    def update
        review = Review.find(params[:id])
        review.update(review_params)
        review.save
        render json: review
    end

    def destroy
        review = Review.find(params[:id])
        review.destroy
        render json: {error: "Review Removed"}
    end
    private
    def review_params
        params.require(:review).permit(:user_id, :game_id, :user_username, :reviewed_game, :rating, :game_name)
    end
end