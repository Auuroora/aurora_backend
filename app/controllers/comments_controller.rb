class CommentsController < ApiController
  before_action :authorize_request
  before_action :load_target, only: %i(index)
  before_action :load_comment, except: %i(index create)

  def index
    @comments = @target&.comments
    render json: @comments, scope: { current_user: @current_user }
  end

  def show
    render json: @comment, scope: { current_user: @current_user }
  end

  def create
    @comment = @current_user.comments.create comment_params
    render json: @comment, scope: { params: nil }
  end

  def update
    @comment.update comment_params
    render json: @comment, scope: { params: nil }
  end

  def destroy
    @comment.destroy
  end

  private

  def load_target
    @comment_params = create_params.permit(:commentable_type, :commentable_id)
    @commentable_type = comment_params[:commentable_type].classify.constantize rescue ''
    @commentable_id = comment_params[:commentable_id] rescue ''
    @target = @commentable_type.find_by(id: @commentable_id)
  end

  def load_comment
    @comment = Comment.find_by(id: params[:id])
  end

  def comment_params
    @params = create_params.require(:comment).permit(:body, :commentable_type, :commentable_id, :user_id)
    # (check_authority(@params)) ? @params.dig("comment") : nil
  end

  def check_authority(params)
    target_post = Post.find_by(id: params.dig("comment", "commentable_id"))
    (@current_user.user_filters&.find_by(filter_id: target_post&.filter&.id).present?) ? true : false
  end

end
