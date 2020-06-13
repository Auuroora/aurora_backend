class FollowsController < ApiController
  before_action :authorize_request
  before_action :load_target, only: %i(create)

  def index
    user_list = (params[:type] == "followers") ? @current_user.followers(User) : @current_user.followees(User)
    render json: user_list
  end

  def create
    @follower_data.toggle_follow!(@followable_data)
  end

  private

  def load_target
    follow_params = create_params.permit(:follower, :follower_id, :followable, :followable_id)
    @follower_type = follow_params[:follower].classify.constantize
    @follower_data = @follower_type.find_by(id: @current_user.id)
    @followable_type = follow_params[:followable].classify.constantize
    @followable_data = @followable_type.find_by(id: follow_params[:followable_id])
  end
end
