ActiveAdmin.register Comment do
  permit_params :id, :body, :commentable_id

  index do
    selectable_column
    id_column
    a link_to ("10 개씩 보기"), "/admin/comments?comment=id_desc&per_page=10", class: "button small"
    a link_to ("20 개씩 보기"), "/admin/comments?comment=id_desc&per_page=20", class: "button small"
    a link_to ("30 개씩 보기"), "/admin/comments?comment=id_desc&per_page=30", class: "button small"
    a link_to ("모두 보기"), "/admin/comments?commento=id_desc&per_page=#{Comment.count}", class: "button small"
    br
    column :body
    column :user
    column :commentable
    column :created_at
    actions
  end

  controller do
    def destroy
      resource.update(body: "관라자에 의해 삭제된 댓글입니다.")
      resource.destroy
      redirect_to action: :index
    end
  end
end
