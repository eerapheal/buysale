class Api::V1::CategoriesController < ApplicationController
  before_action :set_category, only: %i[ show update destroy ]

  # GET /api/v1/categories
  # GET /api/v1/categories.json
  def index
    @categories = Api::V1::Category.all
  end

  # GET /api/v1/categories/1
  # GET /api/v1/categories/1.json
  def show
  end

  # POST /api/v1/categories
  # POST /api/v1/categories.json
  def create
    @category = Api::V1::Category.new(category_params)

    if @category.save
      render :show, status: :created, location: @category
    else
      render json: @category.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /api/v1/categories/1
  # PATCH/PUT /api/v1/categories/1.json
  def update
    if @category.update(category_params)
      render :show, status: :ok, location: @category
    else
      render json: @category.errors, status: :unprocessable_entity
    end
  end

  # DELETE /api/v1/categories/1
  # DELETE /api/v1/categories/1.json
  def destroy
    @category.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_category
      @category = Api::V1::Category.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def category_params
      params.fetch(:category, {:name})
    end
end
