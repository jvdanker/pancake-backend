# frozen_string_literal: true

class Admin::CouncilsController < Admin::BaseController
  before_action :set_council, only: %i[show edit update destroy]

  # GET /councils
  def index
    @councils = Council.all.order(:name)
  end

  # GET /councils/1
  def show; end

  # GET /councils/new
  def new
    @council = Council.new
  end

  # GET /councils/1/edit
  def edit; end

  # POST /councils
  def create
    @council = Council.new(council_params)

    if @council.save
      redirect_to admin_councils_path, notice: 'Council was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /councils/1
  def update
    if @council.update(council_params)
      redirect_to admin_councils_path, notice: 'Council was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /councils/1
  def destroy
    @council.destroy
    redirect_to admin_councils_url, notice: 'Council was successfully destroyed.'
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_council
    @council = Council.find(params[:id])
  end

  # Only allow a trusted parameter "white list" through.
  def council_params
    params.require(:council).permit(:name, :active)
  end
end
