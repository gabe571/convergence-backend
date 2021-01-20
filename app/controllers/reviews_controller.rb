class ReviewsController < ApplicationController
    before_action :authorized, only:[:create]

    def index
        reviews = Reviews.all
        render json: reviews
    end

    def show
        review = Review.find_by(params[:id])
        render json: reviews
    end

    def create
        game = game.find_or_create_by(name: params[:review][:game])
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

    def review_params
        params.require(:review).permit(:user_id, :game_id, :user_username, :game_name, :reviewed_game, :rating)
    end
end