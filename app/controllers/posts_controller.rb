class PostsController < ApiController
  before_action :authorize_request
  before_action :load_post, except: %i(index create)

  def index
    @posts = Post.all

    # 제목, 내용 검색
    if params[:title_cont] || params[:description_cont]
      @posts = @posts.ransack(params).result
    end
    # 태그 검색
    if params[:tag_cont]
      search_val = "#"
      search_val.concat(params[:tag_cont]) rescue ''
      @posts = @posts.tagged_with(search_val)
    end

    @posts = @posts.page(params[:page]).order(created_at: :desc).per(10)
    render json: @posts, meta: pagination_meta(@posts), adapter: :json, scope: { params: create_params, current_user: @current_user }
  end

  def show
    render json: @post, scope: { params: create_params, current_user: @current_user }, status: :success
  end

  def create
    params = post_params
    if Post.find_by(filter_id: params.dig(:filter_id)).present?
     render json: { message: '중복 생성이 불가합니다.' }, status: :unprocessable_entity
    else
      @post = Post.create(params)
      render json: @post, scope: { params: nil, current_user: @current_user }
    end
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
