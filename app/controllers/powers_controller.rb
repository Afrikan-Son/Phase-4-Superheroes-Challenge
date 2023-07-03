class PowersController < ApplicationController


    rescue_from ActiveRecord::RecordNotFound, with: :not_found_response
    def index
        render json: Power.all, status: :ok
    end

    def show
        power=Power.find_by!(id:params[:id])
        render json: power, status: :ok
    end


    private
    def not_found_response
        render json: {error: "Power not found"}, status: :not_found
    end
end
