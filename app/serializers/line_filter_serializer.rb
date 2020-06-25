class LineFilterSerializer < ActiveModel::Serializer
  attributes %i(line_filter_info filter_info order_info post_info)

  def line_filter_info
    { id: object.id, amount: object.amount, check: object.check, created_at: object.created_at }
  end

  def filter_info
    filter = object.filter
    { filter_id: filter.id, filter_data_path: filter.filter_data_path, filter_name: filter.filter_name }
  end

  def post_info
    post = object.post
    if post.present?
      { post_id: post.id, post_title: post.title }
    else
      { post_id: '-', post_title: '제작자로 인해 삭제된 상품'}
    end
  end

  def order_info
    order = object.order
    { order_id: order.id, state: order.state, total: order.total }
  end
end
