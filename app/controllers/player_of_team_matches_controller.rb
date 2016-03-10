class PlayerOfTeamMatchesController < ApplicationController
  before_action :set_player_of_team_match, only: [:show, :edit, :update, :destroy]

  # GET /player_of_team_matches
  # GET /player_of_team_matches.json
  def index
    @player_of_team_matches = PlayerOfTeamMatch.all
  end

  # GET /player_of_team_matches/1
  # GET /player_of_team_matches/1.json
  def show
  end

  # GET /player_of_team_matches/new
  def new
    @player_of_team_match = PlayerOfTeamMatch.new
  end

  # GET /player_of_team_matches/1/edit
  def edit
  end

  # POST /player_of_team_matches
  # POST /player_of_team_matches.json
  def create
    @player_of_team_match = PlayerOfTeamMatch.new(player_of_team_match_params)

    respond_to do |format|
      if @player_of_team_match.save
        format.html { redirect_to @player_of_team_match, notice: 'Player of team match was successfully created.' }
        format.json { render :show, status: :created, location: @player_of_team_match }
      else
        format.html { render :new }
        format.json { render json: @player_of_team_match.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /player_of_team_matches/1
  # PATCH/PUT /player_of_team_matches/1.json
  def update
    respond_to do |format|
      if @player_of_team_match.update(player_of_team_match_params)
        format.html { redirect_to @player_of_team_match, notice: 'Player of team match was successfully updated.' }
        format.json { render :show, status: :ok, location: @player_of_team_match }
      else
        format.html { render :edit }
        format.json { render json: @player_of_team_match.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /player_of_team_matches/1
  # DELETE /player_of_team_matches/1.json
  def destroy
    @player_of_team_match.destroy
    respond_to do |format|
      format.html { redirect_to player_of_team_matches_url, notice: 'Player of team match was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_player_of_team_match
      @player_of_team_match = PlayerOfTeamMatch.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def player_of_team_match_params
      params.require(:player_of_team_match).permit(:player_of_team_id, :match_id)
    end
end
