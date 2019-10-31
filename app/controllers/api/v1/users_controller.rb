class Api::V1::UsersController < ApplicationController

    def create
        user = User.new(
            name: params[:name],
            username: params[:username],
            password: params[:password]
        )
        if user.save
            render json: user
        else 
            render json: {errors: user.errors.full_messages}
        end
    end

    def login

    end

end
