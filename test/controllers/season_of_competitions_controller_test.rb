require 'test_helper'

class SeasonOfCompetitionsControllerTest < ActionController::TestCase
  setup do
    @season_of_competition = season_of_competitions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:season_of_competitions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create season_of_competition" do
    assert_difference('SeasonOfCompetition.count') do
      post :create, season_of_competition: { competition_id: @season_of_competition.competition_id, name: @season_of_competition.name, season_id: @season_of_competition.season_id }
    end

    assert_redirected_to season_of_competition_path(assigns(:season_of_competition))
  end

  test "should show season_of_competition" do
    get :show, id: @season_of_competition
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @season_of_competition
    assert_response :success
  end

  test "should update season_of_competition" do
    patch :update, id: @season_of_competition, season_of_competition: { competition_id: @season_of_competition.competition_id, name: @season_of_competition.name, season_id: @season_of_competition.season_id }
    assert_redirected_to season_of_competition_path(assigns(:season_of_competition))
  end

  test "should destroy season_of_competition" do
    assert_difference('SeasonOfCompetition.count', -1) do
      delete :destroy, id: @season_of_competition
    end

    assert_redirected_to season_of_competitions_path
  end
end
