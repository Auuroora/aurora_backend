class HomeController < ApiController
  before_action :authorize_request

  def search
  end

  def my_post
    posts = @current_user.posts
    render json: posts, scope: { params: create_params, current_user: @current_user }
  end

  def my_filter
    purchase_filters = []
     @current_user.orders.purchased.each do |order|
      order.line_filters.each do |line_filter|
        purchase_filters << line_filter.filter
      end
    end
    filters = @current_user.filters

    render json: {my_filter: filters, purchase_filter: purchase_filters}, scope: { params: create_params, current_user: @current_user }
  end

  def my_likes_post
    like_posts = []
    Like.where(liker: @current_user).each do |like|
      like_posts << like.likeable_type.constantize.find_by(id: like.likeable_id)
    end

    render json: like_posts, scope: { params: create_params, current_user: @current_user }
  end

end
