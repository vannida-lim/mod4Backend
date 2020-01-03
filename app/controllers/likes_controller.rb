class LikesController < ApplicationController
    def show
        like = Like.find(params[:id])
        render json: like, include: [:user, :meme]
    end
end
