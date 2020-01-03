class MemeSerializer < ActiveModel::Serializer
  belongs_to :user, serializer: UserSerializer
  has_many :likes
  include FastJsonapi::ObjectSerializer
 
  attributes :id, :title, :category, :img_url
end
