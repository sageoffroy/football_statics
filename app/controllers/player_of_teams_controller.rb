class PlayerOfTeamsController < ApplicationController
  before_action :set_player_of_team, only: [:show, :edit, :update, :destroy]

  # GET /player_of_teams
  # GET /player_of_teams.json
  def index
    @player_of_teams = PlayerOfTeam.all
  end

  # GET /player_of_teams/1
  # GET /player_of_teams/1.json
  def show
  end

  # GET /player_of_teams/new
  def new
    @player_of_team = PlayerOfTeam.new
  end

  # GET /player_of_teams/1/edit
  def edit
  end

  # POST /player_of_teams
  # POST /player_of_teams.json
  def create
    @player_of_team = PlayerOfTeam.new(player_of_team_params)

    respond_to do |format|
      if @player_of_team.save
        format.html { redirect_to @player_of_team, notice: 'Player of team was successfully created.' }
        format.json { render :show, status: :created, location: @player_of_team }
      else
        format.html { render :new }
        format.json { render json: @player_of_team.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /player_of_teams/1
  # PATCH/PUT /player_of_teams/1.json
  def update
    respond_to do |format|
      if @player_of_team.update(player_of_team_params)
        format.html { redirect_to @player_of_team, notice: 'Player of team was successfully updated.' }
        format.json { render :show, status: :ok, location: @player_of_team }
      else
        format.html { render :edit }
        format.json { render json: @player_of_team.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /player_of_teams/1
  # DELETE /player_of_teams/1.json
  def destroy
    @player_of_team.destroy
    respond_to do |format|
      format.html { redirect_to player_of_teams_url, notice: 'Player of team was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_player_of_team
      @player_of_team = PlayerOfTeam.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def player_of_team_params
      params.require(:player_of_team).permit(:player_id, :team_id, :contract_start, :contract_end, :shirt_number)
    end
end
