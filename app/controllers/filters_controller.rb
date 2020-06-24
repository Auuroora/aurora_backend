class FiltersController < ApiController
  before_action :authorize_request
  before_action :load_filter, except: %i(index create)

  def index
    render json: Filter.all, scope: { params: create_params, current_user: @current_user }
  end

  def show
    render json: @filter, scope: { params: create_params, current_user: @current_user }
  end

  def create
    filter = @current_user.filters.create(filter_params)
    render json: filter, scope: { params: nil, current_user: @current_user }
  end

  def update
    @filter&.update filter_params
    render json: @filter, scope: { params: nil, current_user: @current_user }
  end

  def destroy
    ActiveRecord::Base.transaction do
      @filter.posts.destroy_all
      @filter.destroy
    end
  end

  private

  def load_filter
    @filter = Filter.find_by(id: params[:id])
  end

  def filter_params
    create_params.require(:filter).permit(:filter_data_path, :filter_name)
  end
end
