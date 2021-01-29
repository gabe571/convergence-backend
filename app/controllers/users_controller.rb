class UsersController < ApplicationController
    before_action :authorized, only:[:persist]

    def create
        @user = User.create(user_params)
        if @user.valid?
            token = encode_token({user_id: @user.id})   
            render json: {error: 'user created!'}
        else 
            render json: {error:'failed to create a user'}
        end
    end 

    def login
        @user = User.find_by(username:params[:username])
        if @user && @user.authenticate(params[:password])
            token = encode_token({user_id: @user.id})
            render json: {user:UserSerializer.new(@user), token:token}
        else
            render json: {error:"wrong user or password"}
        end 
        
    end 
    
    def index 
        @user = User.all
        render json: @user
    end
    def persist
        token = encode_token({user_id: @user.id})
        render json: {user:UserSerializer.new(@user), token:token} 
    end 

    private 
    def user_params
        params.permit(:username, :password)
    end 
end
