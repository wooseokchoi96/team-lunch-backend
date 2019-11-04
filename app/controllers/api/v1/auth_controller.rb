class Api::V1::AuthController < ApplicationController

    def create
        user = User.new(
            name: params[:name],
            username: params[:username],
            password: params[:password]
        )
        if user.save
            token = JWT.encode({user_id: user.id}, secret_key)
            render json: {user: user, token: token}
        else 
            render json: {errors: user.errors.full_messages}
        end
    end

    def login
        user = User.find_by(username: params[:username])
        if user && user.authenticate(params[:password])
            token = JWT.encode({user_id: user.id}, secret_key)
            render json: {user: user, token: token}
        else
            render json: {errors: 'Login Failed'}
        end
    end

    def auto_login
        if session_user
            render json: session_user
        else
            render json: {errors: 'No User Found'}
        end
    end

end
