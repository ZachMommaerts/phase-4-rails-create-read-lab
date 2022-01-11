class Plant < ApplicationRecord

    def index
        render json: Plant.all, except:[:created_at, :updated_at]
    end

    def show
        render json: Plant.find_by(id: params[:id]), except:[:created_at, :updated_at]
    end

    def create
        plant = Plant.create(plant_params)
        render json: plant, except:[:created_at, :updated_at]
    end

    private

    def plant_params
        params.permit(:name, :species. :price)
    end
end
