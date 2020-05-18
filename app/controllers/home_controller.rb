class HomeController < ApiController
  before_action :authorize_request

  def search
  end

  def my_post
    posts = @current_user.posts
    render json: posts, scope: { params: create_params, current_user: @current_user }
  end

  def my_filter
    filters = @current_user.filters
    render json: filters, scope: { params: create_params }
  end
end
