class UserSerializer < ActiveModel::Serializer
  attributes %i(username email created_at followees_count followers_count cash)
end
