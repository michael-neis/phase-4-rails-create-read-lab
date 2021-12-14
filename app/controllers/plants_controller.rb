class PlantsController < ApplicationController
    def index
        plants = Plant.all
        render json: plants
    end

    def show
        plant = Plant.find_by_id(params[:id])
        if plant
            render json: plant
        else
            render json: "No plant found"
        end
    end

    def create
        plant = Plant.create(item_params)
        render json: plant, status: :created
    end

    private

    def item_params
        params.permit(:name, :image, :price)
    end
end
