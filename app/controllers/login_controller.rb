class LoginController < ApplicationController
  def login
    user = User.where(params.require(:user).permit(:username, :password, :token)).first
    secret = Rails.application.secrets.secret_key_base
    token = JWT.encode({ user_id: user.id }, secret, 'HS256')

    if user
      response = {
        status: 200,
        message: 'Login correcto',
        authorization: token
      }
    else
      response = {
        status: 500,
        message: 'Login incorrecto'
      }
    end

    render json: response
  end
end