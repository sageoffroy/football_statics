class CompetitionTypesController < ApplicationController
  before_action :set_competition_type, only: [:show, :edit, :update, :destroy]

  # GET /competition_types
  # GET /competition_types.json
  def index
    @competition_types = CompetitionType.all
  end

  # GET /competition_types/1
  # GET /competition_types/1.json
  def show
  end

  # GET /competition_types/new
  def new
    @competition_type = CompetitionType.new
  end

  # GET /competition_types/1/edit
  def edit
  end

  # POST /competition_types
  # POST /competition_types.json
  def create
    @competition_type = CompetitionType.new(competition_type_params)

    respond_to do |format|
      if @competition_type.save
        format.html { redirect_to @competition_type, notice: 'Competition type was successfully created.' }
        format.json { render :show, status: :created, location: @competition_type }
      else
        format.html { render :new }
        format.json { render json: @competition_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /competition_types/1
  # PATCH/PUT /competition_types/1.json
  def update
    respond_to do |format|
      if @competition_type.update(competition_type_params)
        format.html { redirect_to @competition_type, notice: 'Competition type was successfully updated.' }
        format.json { render :show, status: :ok, location: @competition_type }
      else
        format.html { render :edit }
        format.json { render json: @competition_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /competition_types/1
  # DELETE /competition_types/1.json
  def destroy
    @competition_type.destroy
    respond_to do |format|
      format.html { redirect_to competition_types_url, notice: 'Competition type was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_competition_type
      @competition_type = CompetitionType.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def competition_type_params
      params.require(:competition_type).permit(:description)
    end
end
