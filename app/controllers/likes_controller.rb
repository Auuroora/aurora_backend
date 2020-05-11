class LikesController < ApiController
  before_action :authorize_request
  before_action :load_target

  def create
    @liker_data.toggle_like!(@likeable_data)
  end

  private

  def load_target
    like_params = create_params.permit(:liker, :liker_id, :likeable, :likeable_id)
    @liker_type = like_params[:liker].classify.constantize
    @liker_data = @liker_type.find_by(id: @current_user.id)
    @likeable_type = like_params[:likeable].classify.constantize
    @likeable_data = @likeable_type.find_by(id: like_params[:likeable_id])
  end

  def create_params
    params = JSON.parse(request.body.read) rescue {}
    ActionController::Parameters.new(params)
  end
end
