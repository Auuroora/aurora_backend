class LineFilterSerializer < ActiveModel::Serializer
  attributes %i(filter_info order_info current_user_info)

  def filter_info
    filter =object.filter
    { filter_id: filter.id, filter_data_path: filter.filter_data_path, filter_name: filter.filter_name }
  end

  def order_info
    order= object.order
    { state: order.state, total: order.total }
  end

  def current_user_info
    current_user = scope.dig(:current_user)
    { name: current_user.username, id: current_user.id } if current_user.present?
  end
end
