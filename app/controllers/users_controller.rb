class UsersController < ApplicationController
    before_action :set_user, only: [:show, :update, :destroy]

    def index
        users = User.all
        render json: users
    end

    def create
        user = User.new(user_params)
        if user.save
            render json: user
        else
            render json: { "message": "something went wrong" }
        end
    end

    def show
        render json: @user
    end

    def update
        if @user.update(user_params)
            render json: @user
        else
            render json: { "message": "something went wrong" }
        end
    end

    def destroy
        if @user.destroy
            render json: { "message": "User successfully removed!" }
        else
            render json: { "message": "something went wrong" }
        end
    end

    private

    def set_user
        @user = User.find(params[:id].to_i)
    end

    def user_params
        params.permit(:name)
    end
end
