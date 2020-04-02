class ApiController < ActionController::API
  def not_found
    render json: { error: 'not_found' }
  end

  protected

  def authorize_request
    begin
      @current_user = User.find(auth_token[:user_id])
    rescue ActiveRecord::RecordNotFound, JWT::DecodeError
      render json: { errors: 'Not Authenticated' }, status: :unauthorized
    end
  end

  private

  def http_token
    @http_token ||= if request.headers['Authorization'].present?
      request.headers['Authorization'].split(' ').last
    end
  end

  def auth_token
    @auth_token ||= JsonWebToken.decode(http_token)
  end
end
