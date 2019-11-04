class ApplicationController < ActionController::API

    def secret_key
        ENV['SECRET_KEY']
    end

    def get_auth_header
        request.headers['Authorization']    
    end

    def encode_token(id)
        JWT.encode({user_id: id}, secret_key)
    end

    def decoded_token
        begin
            JWT.decode(get_auth_header, secret_key)[0]['user_id']
        rescue
            nil
        end
    end

    def session_user
        user_id = decoded_token
        User.find_by(id: user_id)
    end

end
