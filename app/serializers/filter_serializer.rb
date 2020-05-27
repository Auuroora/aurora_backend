class FilterSerializer < ActiveModel::Serializer
  attributes %i(filter_info user_info current_user_info)

  def filter_info
    { filter_id: object.id, filter_data_path: object.filter_data_path, filter_name: object.filter_name, created_at: created_date(object) }
  end

  def user_info
    user_scope = ActiveModel::Type::Boolean.new.cast(scope.dig(:params, :user_info))
    user = object.user
    { id: user.id, username: user.username, email: user.email, created_at: created_date(user) } if user_scope rescue nil
  end

  def current_user_info
    current_user = scope.dig(:current_user)
    { name: current_user.username, id: current_user.id}
  end

  def created_date target
    "#{target.created_at.strftime('%Y-%m-%d %H:%M')}" rescue ''
  end
end
