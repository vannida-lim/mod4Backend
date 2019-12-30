class User < ApplicationRecord
    has_many :memes
    has_many :likes
    has_many :liked_memes, :through => :like, :source => :meme

    has_secure_password
    validates :username, presence: true, uniqueness: true
end
