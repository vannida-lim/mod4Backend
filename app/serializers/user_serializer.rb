class UserSerializer < ActiveModel::Serializer
  has_many :memes
  has_many :likes
  include FastJsonapi::ObjectSerializer

  attributes :id, :username, :password
end
