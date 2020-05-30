class LineFiltersController < ApiController
  before_action :authorize_request
  before_action :load_line_filter, only: %i(destroy update)
  before_action :load_cart_order, only: %i(index create update)

  def index
    line_filters = @order.line_filters if @order.present?
    render json: line_filters, scope: { current_user: @current_user }
  end

  def create
    line_filter = @order.line_filters.create(line_filters_params)
    @order.update_total
    render json: line_filter
  end

  def update
    target = @line_filter
    (target.check?) ? target.update(check: false) : target.update(check: true)
    @order.update_total
    render json: target
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
