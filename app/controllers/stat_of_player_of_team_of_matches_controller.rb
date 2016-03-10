class StatOfPlayerOfTeamOfMatchesController < ApplicationController
  before_action :set_stat_of_player_of_team_of_match, only: [:show, :edit, :update, :destroy]

  # GET /stat_of_player_of_team_of_matches
  # GET /stat_of_player_of_team_of_matches.json
  def index
    @stat_of_player_of_team_of_matches = StatOfPlayerOfTeamOfMatch.all
  end

  # GET /stat_of_player_of_team_of_matches/1
  # GET /stat_of_player_of_team_of_matches/1.json
  def show
  end

  # GET /stat_of_player_of_team_of_matches/new
  def new
    @stat_of_player_of_team_of_match = StatOfPlayerOfTeamOfMatch.new
  end

  # GET /stat_of_player_of_team_of_matches/1/edit
  def edit
  end

  # POST /stat_of_player_of_team_of_matches
  # POST /stat_of_player_of_team_of_matches.json
  def create
    @stat_of_player_of_team_of_match = StatOfPlayerOfTeamOfMatch.new(stat_of_player_of_team_of_match_params)

    respond_to do |format|
      if @stat_of_player_of_team_of_match.save
        format.html { redirect_to @stat_of_player_of_team_of_match, notice: 'Stat of player of team of match was successfully created.' }
        format.json { render :show, status: :created, location: @stat_of_player_of_team_of_match }
      else
        format.html { render :new }
        format.json { render json: @stat_of_player_of_team_of_match.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /stat_of_player_of_team_of_matches/1
  # PATCH/PUT /stat_of_player_of_team_of_matches/1.json
  def update
    respond_to do |format|
      if @stat_of_player_of_team_of_match.update(stat_of_player_of_team_of_match_params)
        format.html { redirect_to @stat_of_player_of_team_of_match, notice: 'Stat of player of team of match was successfully updated.' }
        format.json { render :show, status: :ok, location: @stat_of_player_of_team_of_match }
      else
        format.html { render :edit }
        format.json { render json: @stat_of_player_of_team_of_match.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /stat_of_player_of_team_of_matches/1
  # DELETE /stat_of_player_of_team_of_matches/1.json
  def destroy
    @stat_of_player_of_team_of_match.destroy
    respond_to do |format|
      format.html { redirect_to stat_of_player_of_team_of_matches_url, notice: 'Stat of player of team of match was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_stat_of_player_of_team_of_match
      @stat_of_player_of_team_of_match = StatOfPlayerOfTeamOfMatch.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def stat_of_player_of_team_of_match_params
      params.require(:stat_of_player_of_team_of_match).permit(:player_of_team_of_match_id, :stat_id, :value, :time)
    end
end
