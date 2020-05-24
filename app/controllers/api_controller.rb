class ApiController < ActionController::API
  def not_found
    render json: { error: 'not_found' }
  end

  protected

  def authorize_request
    begin
      @current_user = User.find(auth_token[:user_id])
    rescue ActiveRecord::RecordNotFound, JWT::DecodeError
      render json: { errors: 'Not found' }, status: :not_found
    rescue ActionController::UnknownFormat
      render json: { message: 'Bad request'}, status: :unprocessable_entity
    rescue
      render json: { message: 'Internal error' }, status: :internal_server_error
    end
  end

  def create_params
    begin
      @params = (request.post? || request.put?) ? JSON.parse(request.body.read) : request.params
      ActionController::Parameters.new(@params)
    rescue
      {}
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
