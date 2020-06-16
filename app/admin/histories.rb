ActiveAdmin.register History do

  permit_params :amount, :user_id, :filter_id, :state, :exchanged_at

  scope -> { '전체' }, :all
  scope -> { '미환급' }, :non_exchange
  scope -> { '캐쉬로 수령' }, :cashed
  scope -> { '환급 요청' }, :exchange_requested
  scope -> { '환급됨' }, :exchanged

  index do
    selectable_column
    id_column
    a link_to ("10 개씩 보기"), "/admin/histories?order=id_desc&per_page=10", class: "button small"
    a link_to ("30 개씩 보기"), "/admin/histories?order=id_desc&per_page=30", class: "button small"
    a link_to ("50 개씩 보기"), "/admin/histories?order=id_desc&per_page=50", class: "button small"
    a link_to ("모두 보기"), "/admin/histories?order=id_desc&per_page=#{History.count}", class: "button small"
    br
    column :amount
    column :user
    column :filter
    column :created_at
    column :exchanged_at
    column :state do |history|
      I18n.t("active_admin.enum.history.state.#{history.state}")
    end
    actions default: true do |user|
    end
  end


end
