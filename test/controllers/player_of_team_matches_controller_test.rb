require 'test_helper'

class PlayerOfTeamMatchesControllerTest < ActionController::TestCase
  setup do
    @player_of_team_match = player_of_team_matches(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:player_of_team_matches)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create player_of_team_match" do
    assert_difference('PlayerOfTeamMatch.count') do
      post :create, player_of_team_match: { match_id: @player_of_team_match.match_id, player_of_team_id: @player_of_team_match.player_of_team_id }
    end

    assert_redirected_to player_of_team_match_path(assigns(:player_of_team_match))
  end

  test "should show player_of_team_match" do
    get :show, id: @player_of_team_match
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @player_of_team_match
    assert_response :success
  end

  test "should update player_of_team_match" do
    patch :update, id: @player_of_team_match, player_of_team_match: { match_id: @player_of_team_match.match_id, player_of_team_id: @player_of_team_match.player_of_team_id }
    assert_redirected_to player_of_team_match_path(assigns(:player_of_team_match))
  end

  test "should destroy player_of_team_match" do
    assert_difference('PlayerOfTeamMatch.count', -1) do
      delete :destroy, id: @player_of_team_match
    end

    assert_redirected_to player_of_team_matches_path
  end
end
