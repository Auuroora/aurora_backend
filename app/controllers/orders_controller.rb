class OrdersController < ApiController
  before_action :authorize_request
  before_action :load_order, only: %i(show)
  before_action :load_cart_filters, only: %i(create)

  def index
    @orders = (order_type[:state].present?) ? Order.send(order_type[:state]) : Order.all
    render json: @orders
  end

  def show
    # 수정 중
    render json: @order
  end

  def create
    order = @current_user.orders.create(total: @cart_filters.checked.sum(:amount))
    @current_user.orders.cart.first.update_total
    order.purchase!
    @cart_filters.checked.each do |filter|
      filter.update(order_id: order.id)
    end
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

  def load_order
    @order = Order.find_by(id: params[:id])
  end

  def load_cart_filters
    @cart_filters = @current_user.orders.cart.first.line_filters
  end

end
