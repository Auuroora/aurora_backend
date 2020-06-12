class OrdersController < ApiController
  before_action :authorize_request
  before_action :load_orders, only: %i(index show)
  before_action :load_cart_filters, only: %i(create)

  def index
    @orders = (order_type[:state].present?) ? @orders.send(order_type[:state]) : @orders.all
    render json: @orders
  end

  def show
    line_filters = @orders.line_filters
    render json:line_filters
  end

  def create
    order = @current_user.orders.create(total: @cart_filters.checked.sum(:amount))
    order.purchase!
    @cart_filters.checked.each do |filter|
      filter.update(order_id: order.id)
    end
    @current_user.cash -= order.total.to_i
    @current_user.save
    @current_user.orders.cart.first.update_total
  end

  def update
    # 수정 중
    case order_type[:state]
    when cancel_request
      @order.cancel_request!
    when cancel
      @order.cancel!
    end
  end

  private

  def order_type
    create_params.permit(:id, :state)
  end

  def load_orders
    @orders = (params[:id]) ? @current_user.orders.find_by(id: params[:id]) : @current_user.orders
  end

  def load_cart_filters
    @cart_filters = @current_user.orders.cart.first.line_filters
  end

end
