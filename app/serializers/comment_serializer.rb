class CommentSerializer < ActiveModel::Serializer
  attributes %i(comment_info)

  def comment_info
    if object.id.nil?
      { message: "댓글을 성공적으로 작성하지 못하였습니다."}
    else
      { id: object.id, body: object.body, commentable_type: object.commentable_type, commentable_id: object.commentable_id }
    end
  end
end
