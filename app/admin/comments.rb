ActiveAdmin.register Comment do
  permit_params :id, :body, :commentable_id

  index do
    selectable_column
    id_column
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
