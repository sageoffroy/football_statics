class SeasonOfCompetitionsController < ApplicationController
  before_action :set_season_of_competition, only: [:show, :edit, :update, :destroy]

  # GET /season_of_competitions
  # GET /season_of_competitions.json
  def index
    @season_of_competitions = SeasonOfCompetition.all
  end

  # GET /season_of_competitions/1
  # GET /season_of_competitions/1.json
  def show
  end

  # GET /season_of_competitions/new
  def new
    @season_of_competition = SeasonOfCompetition.new
  end

  # GET /season_of_competitions/1/edit
  def edit
  end

  # POST /season_of_competitions
  # POST /season_of_competitions.json
  def create
    @season_of_competition = SeasonOfCompetition.new(season_of_competition_params)

    respond_to do |format|
      if @season_of_competition.save
        format.html { redirect_to @season_of_competition, notice: 'Season of competition was successfully created.' }
        format.json { render :show, status: :created, location: @season_of_competition }
      else
        format.html { render :new }
        format.json { render json: @season_of_competition.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /season_of_competitions/1
  # PATCH/PUT /season_of_competitions/1.json
  def update
    respond_to do |format|
      if @season_of_competition.update(season_of_competition_params)
        format.html { redirect_to @season_of_competition, notice: 'Season of competition was successfully updated.' }
        format.json { render :show, status: :ok, location: @season_of_competition }
      else
        format.html { render :edit }
        format.json { render json: @season_of_competition.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /season_of_competitions/1
  # DELETE /season_of_competitions/1.json
  def destroy
    @season_of_competition.destroy
    respond_to do |format|
      format.html { redirect_to season_of_competitions_url, notice: 'Season of competition was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_season_of_competition
      @season_of_competition = SeasonOfCompetition.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def season_of_competition_params
      params.require(:season_of_competition).permit(:season_id, :competition_id, :name)
    end
end
