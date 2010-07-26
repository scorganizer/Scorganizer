require 'test_helper'

class LeaguesControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:leagues)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create league" do
    assert_difference('League.count') do
      post :create, :league => { }
    end

    assert_redirected_to league_path(assigns(:league))
  end

  test "should show league" do
    get :show, :id => leagues(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => leagues(:one).to_param
    assert_response :success
  end

  test "should update league" do
    put :update, :id => leagues(:one).to_param, :league => { }
    assert_redirected_to league_path(assigns(:league))
  end

  test "should destroy league" do
    assert_difference('League.count', -1) do
      delete :destroy, :id => leagues(:one).to_param
    end

    assert_redirected_to leagues_path
  end
end
