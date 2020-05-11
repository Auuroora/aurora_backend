class PostSerializer < ActiveModel::Serializer
  include ActionView::Helpers::NumberHelper
  attributes %i(post_info user_info filter_info tag_info like_info)

  def post_info
    { id: object.id, title: object.title, description: object.description, price: money(object), created_at: created_date(object) }
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

  def like_info
    like_scope = ActiveModel::Type::Boolean.new.cast(scope.dig(:params, :like_info))
    current_user = scope.dig(:current_user)
    { liked_count: object.likers_count, liked: object.liked_by?(current_user) } if like_scope rescue nil
  end

  def created_date target
    "#{target.created_at.strftime('%Y-%m-%d %H:%M')}" rescue ''
  end

  def money target
    "#{number_with_delimiter(target.price.to_i)}원" rescue ''
  end
end
