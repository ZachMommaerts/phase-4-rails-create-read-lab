class PlantsController < ApplicationController

    def index
        render json: Plant.all, except:[:created_at, :updated_at]
    end

    def show
        render json: Plant.find_by(id: params[:id]), except:[:created_at, :updated_at]
    end

    def create
        plant = Plant.create(plant_params)
        render json: plant, except:[:created_at, :updated_at], status: :created
    end

    private

    def plant_params
        params.permit(:name, :image, :price)
    end

end
