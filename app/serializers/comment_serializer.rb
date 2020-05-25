class CommentSerializer < ActiveModel::Serializer
  attributes %i(comment_info user_info current_user_info)

  def comment_info
    if object.id.nil?
      { message: "댓글을 성공적으로 작성하지 못하였습니다."}
    else
      { id: object.id, body: object.body, commentable_type: object.commentable_type, commentable_id: object.commentable_id }
    end
  end

  def user_info
    author = object.user
    { author_name: author.username, author_id: author.id } if author.present? 
  end

  def current_user_info
    current_user = scope.dig(:current_user)
    { name: current_user.username, id: current_user.id } if current_user.present?
  end
end
