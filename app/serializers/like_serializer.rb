class LikeSerializer < ActiveModel::Serializer
  include FastJsonapi::ObjectSerializer
  belongs_to :user, serializer: UserSerializer
  belongs_to :meme, serializer: MemeSerializer
  
  attributes :id, :count
  # :user_id, :meme_id
end
