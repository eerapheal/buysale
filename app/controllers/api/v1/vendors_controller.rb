class Api::V1::VendorsController < ApplicationController
  before_action :set_vendor, only: %i[ show update destroy ]

  # GET /api/v1/vendors
  # GET /api/v1/vendors.json
  def index
    @vendors = Vendor.all
    render json: @vendors
  end

  # GET /api/v1/vendors/1
  # GET /api/v1/vendors/1.json
  def show
  end

  # POST /api/v1/vendors
  # POST /api/v1/vendors.json
  def create
    @vendor = Vendor.new(vendor_params)

    if @vendor.save
      render :show, status: :created, location: @vendor
    else
      render json: @vendor.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /api/v1/vendors/1
  # PATCH/PUT /api/v1/vendors/1.json
  def update
    if @vendor.update(vendor_params)
      render :show, status: :ok, location: @vendor
    else
      render json: @vendor.errors, status: :unprocessable_entity
    end
  end

  # DELETE /api/v1/vendors/1
  # DELETE /api/v1/vendors/1.json
  def destroy
    @vendor.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_vendor
      @vendor = Vendor.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def vendor_params
      params.require(:subcategory).permit(:name, :description, :image)
    end
end
