class LineFilterSerializer < ActiveModel::Serializer
  attributes %i(filter_info order_info post_info)

  def filter_info
    filter = object.filter
    { filter_id: filter.id, filter_data_path: filter.filter_data_path, filter_name: filter.filter_name }
  end

  def post_info
    post = object.post
    { post_id: post.id, post_title: post.title }
  end

  def order_info
    order = object.order
    { state: order.state, total: order.total }
  end
end
