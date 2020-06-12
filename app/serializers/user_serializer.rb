class UserSerializer < ActiveModel::Serializer
  attributes %i(id username email created_at followees_count followers_count cash image)
end
