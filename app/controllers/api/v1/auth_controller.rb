class Api::V1::AuthController < ApplicationController

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
        user = User.find_by(username: params[:username])
        if user && user.authenticate(params[:password])
            render json: user
        else
            render json: {errors: 'Login Failed'}
        end
    end

    def auto_login
        user = User.find_by(id: request.headers['Authorization'])
        if user
            render json: user
        else
            render json: {errors: 'No User Found'}
        end
    end

end
