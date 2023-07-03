class HerosController < ApplicationController

    def index
        render json: Hero.all, status: :ok
    end

    def show
        hero=Hero.find_by(id: params[:id])
        render json: hero, serializer: HeroWithPowersSerializer, status: :ok
    end
end
