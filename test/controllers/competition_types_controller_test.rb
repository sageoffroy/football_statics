require 'test_helper'

class CompetitionTypesControllerTest < ActionController::TestCase
  setup do
    @competition_type = competition_types(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:competition_types)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create competition_type" do
    assert_difference('CompetitionType.count') do
      post :create, competition_type: { description: @competition_type.description }
    end

    assert_redirected_to competition_type_path(assigns(:competition_type))
  end

  test "should show competition_type" do
    get :show, id: @competition_type
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @competition_type
    assert_response :success
  end

  test "should update competition_type" do
    patch :update, id: @competition_type, competition_type: { description: @competition_type.description }
    assert_redirected_to competition_type_path(assigns(:competition_type))
  end

  test "should destroy competition_type" do
    assert_difference('CompetitionType.count', -1) do
      delete :destroy, id: @competition_type
    end

    assert_redirected_to competition_types_path
  end
end
