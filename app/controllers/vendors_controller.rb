class VendorsController < ApplicationController
  before_action :set_vendor, only: [:show, :update, :destroy]

  # GET /vendors
  def index
    @vendors = Vendor.all

    render json: @vendors
  end

  # GET /vendors/1
  def show
    render json: @vendor
  end

  # POST /vendors
  # def create
  #   @vendor = Vendor.new(vendor_params)

  #   if @vendor.save
  #     render json: @vendor, status: :created, location: @vendor
  #   else
  #     render json: @vendor.errors, status: :unprocessable_entity
  #   end
  # end

  

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_vendor
      @vendor = Vendor.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def vendor_params
      params.require(:vendor).permit(:name, :address, :website, :social, :menu, :services, :phone, :rating)
    end
end
