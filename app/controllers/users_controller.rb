class UsersController < ApplicationController

    def create
        @user = User.create(user_params)
        if @user.valid?
            token = encode_token({user_id: @user.id})
            render json: {error:'Gamer Recognized!'}
        else
            render json: {error: 'Failed to create Gamer'}
        end
    end

    def login
        @user = User.find_by(username:params[:username])
        if @user && @user.authenticate(params[:password])
            token = encode_token({user_id: @user.id})
            render json: {user:UserSerializer.new(@user), token:token}
      else
        render json: {error: "wrong username and/or password"}
      end
    end
 
    def index
        @user = User.all
        render json: @user
    end

    def persist
        token= encode_token({user_id: @user.id})
        render json: {user:UserSerializer.new(@user), token:token}
    end

    private
    def user_params
        params.permit(:username, :password)
    end
end