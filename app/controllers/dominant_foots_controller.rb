class DominantFootsController < ApplicationController
  before_action :set_dominant_foot, only: [:show, :edit, :update, :destroy]

  # GET /dominant_foots
  # GET /dominant_foots.json
  def index
    @dominant_foots = DominantFoot.all
  end

  # GET /dominant_foots/1
  # GET /dominant_foots/1.json
  def show
  end

  # GET /dominant_foots/new
  def new
    @dominant_foot = DominantFoot.new
  end

  # GET /dominant_foots/1/edit
  def edit
  end

  # POST /dominant_foots
  # POST /dominant_foots.json
  def create
    @dominant_foot = DominantFoot.new(dominant_foot_params)

    respond_to do |format|
      if @dominant_foot.save
        format.html { redirect_to @dominant_foot, notice: 'Dominant foot was successfully created.' }
        format.json { render :show, status: :created, location: @dominant_foot }
      else
        format.html { render :new }
        format.json { render json: @dominant_foot.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /dominant_foots/1
  # PATCH/PUT /dominant_foots/1.json
  def update
    respond_to do |format|
      if @dominant_foot.update(dominant_foot_params)
        format.html { redirect_to @dominant_foot, notice: 'Dominant foot was successfully updated.' }
        format.json { render :show, status: :ok, location: @dominant_foot }
      else
        format.html { render :edit }
        format.json { render json: @dominant_foot.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /dominant_foots/1
  # DELETE /dominant_foots/1.json
  def destroy
    @dominant_foot.destroy
    respond_to do |format|
      format.html { redirect_to dominant_foots_url, notice: 'Dominant foot was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_dominant_foot
      @dominant_foot = DominantFoot.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def dominant_foot_params
      params.require(:dominant_foot).permit(:description)
    end
end
