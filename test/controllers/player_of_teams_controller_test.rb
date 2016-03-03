require 'test_helper'

class PlayerOfTeamsControllerTest < ActionController::TestCase
  setup do
    @player_of_team = player_of_teams(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:player_of_teams)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create player_of_team" do
    assert_difference('PlayerOfTeam.count') do
      post :create, player_of_team: { contract_end: @player_of_team.contract_end, contract_start: @player_of_team.contract_start, player_id: @player_of_team.player_id, shirt_number: @player_of_team.shirt_number, team_id: @player_of_team.team_id }
    end

    assert_redirected_to player_of_team_path(assigns(:player_of_team))
  end

  test "should show player_of_team" do
    get :show, id: @player_of_team
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @player_of_team
    assert_response :success
  end

  test "should update player_of_team" do
    patch :update, id: @player_of_team, player_of_team: { contract_end: @player_of_team.contract_end, contract_start: @player_of_team.contract_start, player_id: @player_of_team.player_id, shirt_number: @player_of_team.shirt_number, team_id: @player_of_team.team_id }
    assert_redirected_to player_of_team_path(assigns(:player_of_team))
  end

  test "should destroy player_of_team" do
    assert_difference('PlayerOfTeam.count', -1) do
      delete :destroy, id: @player_of_team
    end

    assert_redirected_to player_of_teams_path
  end
end
