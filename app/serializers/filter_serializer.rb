class FilterSerializer < ActiveModel::Serializer
  attributes %i(id filter_name filter_data_path user_id)
end
