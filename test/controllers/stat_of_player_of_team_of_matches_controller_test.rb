require 'test_helper'

class StatOfPlayerOfTeamOfMatchesControllerTest < ActionController::TestCase
  setup do
    @stat_of_player_of_team_of_match = stat_of_player_of_team_of_matches(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:stat_of_player_of_team_of_matches)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create stat_of_player_of_team_of_match" do
    assert_difference('StatOfPlayerOfTeamOfMatch.count') do
      post :create, stat_of_player_of_team_of_match: { player_of_team_of_match_id: @stat_of_player_of_team_of_match.player_of_team_of_match_id, stat_id: @stat_of_player_of_team_of_match.stat_id, time: @stat_of_player_of_team_of_match.time, value: @stat_of_player_of_team_of_match.value }
    end

    assert_redirected_to stat_of_player_of_team_of_match_path(assigns(:stat_of_player_of_team_of_match))
  end

  test "should show stat_of_player_of_team_of_match" do
    get :show, id: @stat_of_player_of_team_of_match
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @stat_of_player_of_team_of_match
    assert_response :success
  end

  test "should update stat_of_player_of_team_of_match" do
    patch :update, id: @stat_of_player_of_team_of_match, stat_of_player_of_team_of_match: { player_of_team_of_match_id: @stat_of_player_of_team_of_match.player_of_team_of_match_id, stat_id: @stat_of_player_of_team_of_match.stat_id, time: @stat_of_player_of_team_of_match.time, value: @stat_of_player_of_team_of_match.value }
    assert_redirected_to stat_of_player_of_team_of_match_path(assigns(:stat_of_player_of_team_of_match))
  end

  test "should destroy stat_of_player_of_team_of_match" do
    assert_difference('StatOfPlayerOfTeamOfMatch.count', -1) do
      delete :destroy, id: @stat_of_player_of_team_of_match
    end

    assert_redirected_to stat_of_player_of_team_of_matches_path
  end
end
