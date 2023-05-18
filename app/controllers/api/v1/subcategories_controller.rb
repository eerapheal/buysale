class Api::V1::SubcategoriesController < ApplicationController
  before_action :set_subcategory, only: %i[ show update destroy ]

  # GET /api/v1/subcategories
  # GET /api/v1/subcategories.json
  def index
    @subcategories = Subcategory.all
    render json: @subcategories
  end

  # GET /api/v1/subcategories/1
  # GET /api/v1/subcategories/1.json
  def show
  end

  # POST /api/v1/subcategories
  # POST /api/v1/subcategories.json
  def create
    @subcategory = Subcategory.new(subcategory_params)

    if @subcategory.save
      render :show, status: :created, location: @subcategory
    else
      render json: @subcategory.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /api/v1/subcategories/1
  # PATCH/PUT /api/v1/subcategories/1.json
  def update
    if @subcategory.update(subcategory_params)
      render :show, status: :ok, location: @subcategory
    else
      render json: @subcategory.errors, status: :unprocessable_entity
    end
  end

  # DELETE /api/v1/subcategories/1
  # DELETE /api/v1/subcategories/1.json
  def destroy
    @subcategory.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_subcategory
      @subcategory = Subcategory.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def subcategory_params
      params.require(:subcategory).permit(:name)
    end
end
