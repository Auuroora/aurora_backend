class PostsController < ApiController
  before_action :authorize_request
  before_action :load_post, except: %i(index create)

  def index
    render json: Post.all, scope: { params: create_params, current_user: @current_user }
  end

  def show
    render json: @post, scope: { params: create_params, current_user: @current_user }
  end

  def create
    @post = @current_user.posts.create(post_params)
    render json: @post, scope: { params: nil }
  end

  def update
    render json: { errors: @post.errors.full_messages }, scope: { params: nil } unless @post.update post_params
  end

  def destroy
    @post.destroy
  end

  private

  def load_post
    @post = Post.find_by(id: params[:id])
  end

  def post_params
    params.permit(:title, :description, :filter_id, :price, :tag_list)
  end

  def create_params
    params = JSON.parse(request.body.read) rescue {}
    ActionController::Parameters.new(params)
  end
end
