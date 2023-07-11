class FacttablesController < ApplicationController
  def index
    @facttable = Facttable.all
    render json: @facttable
  end
  def show
    @facttable = set_facttable
    render json: @facttable, status: :ok
  end
  def create 
    @facttable = Facttable.create!(facttable_params)
    render json: @facttable, status: :created
  end
  def update
    @facttable = set_facttable
    @facttable.update!(facttable_params)
    render json: @facttable, status: :ok
  end
  def destroy
    @facttable = set_facttable
    @facttable.destroy
  end
  private
    # Use callbacks to share common setup or constraints between actions.
    def set_facttable
      @facttable = Facttable.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def facttable_params
      params.permit(:datekey_id, :bookkey_id, :memberkey_id)
    end
end
