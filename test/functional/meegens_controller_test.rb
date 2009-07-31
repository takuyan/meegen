require 'test_helper'

class MeegensControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:meegens)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create meegen" do
    assert_difference('Meegen.count') do
      post :create, :meegen => { }
    end

    assert_redirected_to meegen_path(assigns(:meegen))
  end

  test "should show meegen" do
    get :show, :id => meegens(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => meegens(:one).to_param
    assert_response :success
  end

  test "should update meegen" do
    put :update, :id => meegens(:one).to_param, :meegen => { }
    assert_redirected_to meegen_path(assigns(:meegen))
  end

  test "should destroy meegen" do
    assert_difference('Meegen.count', -1) do
      delete :destroy, :id => meegens(:one).to_param
    end

    assert_redirected_to meegens_path
  end
end
