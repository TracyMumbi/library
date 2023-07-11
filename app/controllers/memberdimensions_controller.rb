class MemberdimensionsController < ApplicationController
  def index
    @memberdimension = Memberdimension.all
    render json: @memberdimension
  end
  def show
    @memberdimension = set_memberdimension
    render json: @memberdimension, status: :ok
  end
  def create 
    @memberdimension = Memberdimension.create!(memberdimension_params)
    render json: @memberdimension, status: :created
  end
  def update
    @memberdimension = set_memberdimension
    @memberdimension.update!(memberdimension_params)
    render json: @memberdimension, status: :ok
  end
  def destroy
    @memberdimension = set_memberdimension
    @memberdimension.destroy
  end
  private
    # Use callbacks to share common setup or constraints between actions.
    def set_memberdimension
      @memberdimension = Memberdimension.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def memberdimension_params
      params.permit(:name, :address, :contactnumber, :email)
    end
end
