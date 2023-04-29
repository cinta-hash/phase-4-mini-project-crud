class SpicesController < ApplicationController

    #GET /spices
    def index
        spices = Spice.all
        render json: spices
    end

    #UPDATE
    def update
        spice = find_spice
        spice.update(spice_params)
        render json: spice
    end

    #CREATE /spices
    def create 
        spice = Spice.create(spice_params)
        render json: spice, status: :created
    end

    #DESTROY
    def destroy
        spice = find_spice
        spice.destroy
        head :no_content
    end

    private
    def spice_params
        params.permit(:title, :image, :description, :notes, :rating)
    end

    def find_spice
        Spice.find(params[:id])
    end

    def render_response_not_found
        render json: {error: "Spice not found"}, status: :not_found
    end
end
