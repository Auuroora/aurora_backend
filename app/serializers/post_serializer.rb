class PostSerializer < ActiveModel::Serializer
  attributes %i(post_info user_info filter_info tag_info)

  def post_info
    { id: object.id, title: object.title, description: object.description, price: object.price, created_at: created_date(object) }
  end

  def filter_info
    filter_scope = ActiveModel::Type::Boolean.new.cast(scope.dig(:params, :filter_info))
    filter = object.filter
    { filter_data_path: filter.filter_data_path, filter_name: filter.filter_name } if filter_scope rescue nil
  end

  def user_info
    user_scope = ActiveModel::Type::Boolean.new.cast(scope.dig(:params, :user_info))
    user = object.user
    { id: user.id, username: user.username, email: user.email, created_at: created_date(user) } if user_scope rescue nil
  end

  def tag_info
    tag_scope = ActiveModel::Type::Boolean.new.cast(scope.dig(:params, :tag_info))
    { tag_list: object.tag_list } if tag_scope rescue nil
  end

  def like_info;end

  def created_date target
    "#{target.created_at.strftime('%Y-%m-%d %H:%M')}" rescue ''
  end

end
