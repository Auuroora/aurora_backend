ActiveAdmin.register Order do
  permit_params :total, :purchased_at, :user_id, :state, :canceled_at
end
