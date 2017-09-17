class ApiController < ApplicationController
  before_action :authenticate_request

  def authenticate_request
    if check_token
      response = {
        status: 401,
        message: 'Petición no autorizada'
      }

      render json: response, status: 401
    end
  end

  def check_token
    token = request.headers['Authorization']
    secret = Rails.application.secrets.secret_key_base
    body = JWT.decode(token, secret, true, { algorithm: 'HS256' })[0]

    body['user_id'].present? && User.find(body['user_id'].to_i)
  rescue
    false
  end
end