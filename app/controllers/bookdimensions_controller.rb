class BookdimensionsController < ApplicationController
  def index
    @bookdimension = Bookdimension.all
    render json: @bookdimension
  end
  def show
    @bookdimension = set_bookdimension
    render json: @bookdimension, status: :ok
  end
  def create 
    @bookdimension = Bookdimension.create!(bookdimension_params)
    render json: @bookdimension, status: :created
  end
  def update
    @bookdimension = set_bookdimension
    @bookdimension.update!(bookdimension_params)
    render json: @bookdimension, status: :ok
  end
  def destroy
    @bookdimension = set_bookdimension
    @bookdimension.destroy
  end
  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bookdimension
      @bookdimension = Bookdimension.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def bookdimension_params
      params.permit(:title, :author, :publicationyear, :genre)
    end
end
