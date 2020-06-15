class HistoriesController < ApiController
  before_action :authorize_request
  before_action :load_history, only: %i(update)

  def index
    histories = @current_user.histories
    render json: histories, { current_user: @current_user } 
  end

  def update
    if (state = params[:state])
      (state.eql?("exchange_request")) ? @history.exchange_request! : @history.returned_as_cash!
    end
  end

  private

  def load_history
    @history = History.find_by(id: params[:id])
  end
end
