class PowersController < ApplicationController


    rescue_from ActiveRecord::RecordNotFound, with: :not_found_response
    rescue_from ActiveRecord::RecordInvalid, with: :unprocessable_entity_response
    def index
        render json: Power.all, status: :ok
    end

    def show
        power=Power.find_by!(id:params[:id])
        render json: power, status: :ok
    end

    def update
        power=Power.find_by!(id:params[:id])
        power.update!(description: params[:description])
    end

    private
    def not_found_response
        render json: {error: "Power not found"}, status: :not_found
    end


    def unprocessable_entity_response(invalid)
        render json: {errors: invalid.record.errors.full_messages}, status: :unprocessable_entity
    end

end
