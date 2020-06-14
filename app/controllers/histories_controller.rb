class HistoriesController < ApiController
  before_action :authorize_request

  def index
    histories = @current_user.histories
    render json: histories
  end
end
