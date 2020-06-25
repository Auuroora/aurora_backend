class LineFiltersController < ApiController
  before_action :authorize_request
  before_action :load_line_filter, only: %i(destroy update)
  before_action :load_cart_order, only: %i(index create update)

  def index
    line_filters = @order.line_filters.order(created_at: :desc) if @order.present?
    render json: line_filters, scope: { current_user: @current_user }
  end

  def create
    params = line_filters_params
    filter_id = params.dig(:filter_id)

    flag = 1
    puts flag
    if @order.line_filters&.find_by(filter_id: filter_id).present?
      flag = 0
      msg = "이미 장바구니에 담은 상품입니다"
    end
    @current_user.orders.purchased.each do |order|
      if order.line_filters.find_by(filter_id: filter_id).present?
        flog=0
        msg = "이미 구매하신 상품입니다"
      end
    end

    if flag == 1
      line_filter = @order.line_filters.create(params)
      @order.update_total
      render json: line_filter
    else
       render json: { message: msg }, status: :unprocessable_entity
    end
  end

  def update
    (@line_filter.check?) ? @line_filter.update(check: false) : @line_filter.update(check: true)
    @order.update_total
    render json: @line_filter
  end

  def destroy
    order = @line_filter.order
    @line_filter.destroy
    order.update_total
    render json: order
  end

  private

  def load_cart_order
    @order = @current_user.orders.cart.first_or_create
  end

  def load_line_filter
    @line_filter = LineFilter.find_by(id: params[:id])
  end

  def line_filters_params
    create_params.require(:line_filter).permit(:filter_id, :order_id, :amount, :post_id)
  end

end
