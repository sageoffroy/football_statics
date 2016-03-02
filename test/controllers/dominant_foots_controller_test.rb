require 'test_helper'

class DominantFootsControllerTest < ActionController::TestCase
  setup do
    @dominant_foot = dominant_foots(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:dominant_foots)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create dominant_foot" do
    assert_difference('DominantFoot.count') do
      post :create, dominant_foot: { description: @dominant_foot.description }
    end

    assert_redirected_to dominant_foot_path(assigns(:dominant_foot))
  end

  test "should show dominant_foot" do
    get :show, id: @dominant_foot
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @dominant_foot
    assert_response :success
  end

  test "should update dominant_foot" do
    patch :update, id: @dominant_foot, dominant_foot: { description: @dominant_foot.description }
    assert_redirected_to dominant_foot_path(assigns(:dominant_foot))
  end

  test "should destroy dominant_foot" do
    assert_difference('DominantFoot.count', -1) do
      delete :destroy, id: @dominant_foot
    end

    assert_redirected_to dominant_foots_path
  end
end
