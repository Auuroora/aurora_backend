class CommentsController < ApiController
  before_action :authorize_request
  before_action :load_comment, except: %i(index create)

  def index
    @comments = Comment.all
    render json: @comments
  end

  def show
    render json: @comment
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

  def load_comment
    @comment = Comment.find_by(id: params[:id])
  end

  def comment_params
    create_params.require(:comment).permit(:body, :commentable_type, :commentable_id, :user_id)
    # (check_authority(@params)) ? @params.dig("comment") : nil
  end

  def check_authority(params)
    target_post = Post.find_by(id: params.dig("comment", "commentable_id"))
    return (@current_user.user_filters&.find_by(filter_id: target_post&.filter&.id).present?) ? true : false
  end

end
