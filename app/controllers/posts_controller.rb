class PostsController < ApiController
  before_action :authorize_request
  before_action :load_post, except: %i(index create)

  def index
    render json: Post.all, status: :ok
  end

  def show
    render json: @post, status: :ok
  end

  def create
    @post = Post.new post_params
    render json: (@post.save) ? @post : @post.errors.full_messages
  end

  def update
    render json: { errors: @post.errors.full_messages }, status: :unprocessable_entity unless @post.update post_params
  end

  def destroy
    @post.destroy
  end

  private

  def load_post
    @post = Post.find_by(id: params[:id])
  end

  def post_params
    params.permit(:title, :description, :filter_id, :user_id, :price, :tag_list)
  end
end
