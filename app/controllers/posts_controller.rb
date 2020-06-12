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
    @post = Post.create(post_params)
    render json: @post, scope: { params: nil, current_user: @current_user }
  end

  def update
    msg = (@post.update post_params) ? "수정에 성공하였습니다." : "수정에 실패하였습니다."
    render json: msg
  end

  def destroy
    msg = "삭제에 성공하였습니다."
    if check_author
      ActiveRecord::Base.transaction do
        destroy_cart_filter(@post)
        @post.destroy
      end
    else
      (msg = "권한이 없습니다.")
    end
    render json: msg
  end

  private

  def load_post
    @post = Post.find_by(id: params[:id])
  end

  def check_author
    @author = User.find_by(id: params[:user_id])
    return (@author == @post.user) ? true : false
  end

  def destroy_cart_filter object
    Order.cart.each do |cart|
      cart.line_filters.where(post: object).destroy_all
    end
  end

  def post_params
    create_params.require(:post).permit(:title, :description, :filter_id, :price, :tag_list, :user_id)
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
