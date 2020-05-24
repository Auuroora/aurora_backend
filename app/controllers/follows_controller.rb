class FollowsController < ApplicationController
  before_action :authorize_request
  before_action :load_target

  def create
    user.toggle_follow!(user)
  end

  private

  def load_target
    like_params = create_params.permit(:liker, :liker_id, :likeable, :likeable_id)
    @liker_type = like_params[:liker].classify.constantize
    @liker_data = @liker_type.find_by(id: @current_user.id)
    @likeable_type = like_params[:likeable].classify.constantize
    @likeable_data = @likeable_type.find_by(id: like_params[:likeable_id])
  end
end
