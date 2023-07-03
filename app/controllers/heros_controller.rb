class HerosController < ApplicationController

    rescue_from ActiveRecord::RecordNotFound, with: :not_found_response

    def index
        render json: Hero.all, status: :ok
    end

    def show
        hero=Hero.find_by!(id: params[:id])
        render json: hero, serializer: HeroWithPowersSerializer, status: :ok
    end


    private
    def not_found_response
        render json: {error: "Hero not found"}, status: :not_found
    end

end
