class ApplicationController < ActionController::API

  before_action :define_selected_language
  before_action :check_authentication



  def define_selected_language
    if(params[:language].is_a? String)
      ApplicationRecord.selected_language = Language.find_by(name:params[:language])
    end
  end


  def encode_token(payload)
    JWT.encode(payload, 'no_s3cr3t')
  end

  def auth_header
    request.headers['Authorization']
  end

  def decoded_token
    if auth_header
      token = auth_header.split(' ')[1]
      begin
        JWT.decode(token, 'no_s3cr3t', true, algorithm: 'HS256')
      rescue JWT::DecodeError
        nil
      end
    end
  end

  def current_user
    if decoded_token
      user_id = decoded_token[0]['user_id']
      User.find_by(id: user_id)
    end
  end

  def logged_in?
    !!current_user
  end

  def check_authentication
    render json: { message: 'Please log in' }, status: :unauthorized unless logged_in?
  end

end
