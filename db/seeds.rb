# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'json'
User.destroy_all 
Like.destroy_all


data = JSON.parse(File.read("db.json"))
users = data["users"]
likes = data["likes"]
memes = data["memes"]


users.each do |user|
    User.create(user)
end

likes.each do |like|
    Like.create(like)
end

memes.each do |meme|
    Meme.create(meme)
end





