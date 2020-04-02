class AuthenticationController < ApiController
  before_action :authorize_request, except: :login

  def login
    login_params = JSON.parse(request.body.read)
    @user = User.find_by(email: login_params['email'])
    if @user&.authenticate(login_params["password"])
      render json: { token: payload(@user), username: @user.username }, status: :ok
    else
      render json: { error: 'unauthorized' }, status: :unauthorized
    end
  end

  private

  def payload(user)
  	JsonWebToken.encode({ user_id: user.id, exp: 7.days.from_now.to_i })
  end
end
