class ThingsController < ApplicationController

    def index
        thing = Thing.all
        render json: thing
    end

    def show
        thing = Thing.find_by_id(params[:id])
        render json: thing.first
    end

end
