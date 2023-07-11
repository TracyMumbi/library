class DatedimensionsController < ApplicationController
  
  def index
    @datedimension = Datedimension.all
    render json: @datedimension
  end
  def show
    @datedimension = set_datedimension
    render json: @datedimension, status: :ok
  end
  def create 
    @datedimension = Datedimension.create!(datedimension_params)
    render json: @datedimension, status: :created
  end
  def update
    @datedimension = set_datedimension
    @datedimension.update!(datedimension_params)
    render json: @datedimension, status: :ok
  end
  def destroy
    @datedimension = set_datedimension
    @datedimension.destroy
  end
  private
    # Use callbacks to share common setup or constraints between actions.
    def set_datedimension
      @datedimension = Datedimension.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def datedimension_params
      params.permit(:date, :year, :month, :day)
    end
end
