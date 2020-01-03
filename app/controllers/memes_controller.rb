class MemesController < ApplicationController
    def index
        memes = Meme.all
        render json: memes
    end

    def show
        meme = Meme.find_by(id: params[:id])
        if meme
            render json: MemeSerializer.new(meme)
        else
            render json: {message: 'Meme not found.'}
        end
    end

    def destroy
        meme = Meme.find_by(id: params[:id])
        meme.destroy
        redirect_to '/', :notice => "Your meme has been deleted"
    end
end
