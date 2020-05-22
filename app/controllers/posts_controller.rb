class PostsController < ApiController
  before_action :authorize_request
  before_action :load_post, except: %i(index create)

  def index
    @posts = Post.page(params[:page]).order(created_at: :desc).per(10)
    render json: @posts, meta: pagination_meta(@posts), adapter: :json, scope: { params: create_params, current_user: @current_user }
  end

  def show
    render json: @post, scope: { params: create_params, current_user: @current_user }
  end

  def create
    @post = @current_user.posts.create(post_params)
    render json: @post, scope: { params: nil }
  end

  def update
    @post&.update post_params
    render json: @post, scope: { params: nil }
  end

  def destroy
    @post.destroy
  end

  private

  def load_post
    @post = Post.find_by(id: params[:id])
  end

  def post_params
    create_params.require(:post).permit(:title, :description, :filter_id, :price, :tag_list)
  end

  def pagination_meta(object)
    {
      current_page: object.current_page,
      next_page: object.next_page,
      prev_page: object.prev_page,
      total_pages: object.total_pages,
      total_count: object.total_count
    }
  end

end
