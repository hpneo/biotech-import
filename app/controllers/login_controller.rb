class LoginController < ApplicationController
  respond_to :json
  def login
    secret = Rails.application.secrets.secret_key_base
    user = User.where(params.require(:user).permit(:username, :token)).first

    if user && user.valid_password?(params[:user][:password])
      token = JWT.encode({ user_id: user.id }, secret, 'HS256')

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