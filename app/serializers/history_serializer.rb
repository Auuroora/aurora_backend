class HistorySerializer < ActiveModel::Serializer
  attributes %i(history_info filter_info user_info)

  def history_info
    {id: object.id, state: object.state, amount: object.amount, created_at: created_date(object.created_at), exchanged_at: created_date(object.exchanged_at)}
  end

  def filter_info
    filter = object.filter
    { id: filter.id, filter_data_path: filter.filter_data_path, filter_name: filter.filter_name }
  end

  def user_info
    user = object.user
    { id: user.id, username: user.username, email: user.email, created_at: created_date(user.created_at) }
  end

  def current_user_info
    current_user = scope.dig(:current_user)
    { cash: current_user.cash, salse_count: current_user.histories.count}
  end

  def created_date date
    "#{date.strftime('%Y-%m-%d')}" rescue ''
  end
end
