require 'test_helper'

class Post470sControllerTest < ActionController::TestCase
  setup do
    @post470 = post470s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:post470s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post470" do
    assert_difference('Post470.count') do
      post :create, :post470 => @post470.attributes
    end

    assert_redirected_to post470_path(assigns(:post470))
  end

  test "should show post470" do
    get :show, :id => @post470.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @post470.to_param
    assert_response :success
  end

  test "should update post470" do
    put :update, :id => @post470.to_param, :post470 => @post470.attributes
    assert_redirected_to post470_path(assigns(:post470))
  end

  test "should destroy post470" do
    assert_difference('Post470.count', -1) do
      delete :destroy, :id => @post470.to_param
    end

    assert_redirected_to post470s_path
  end
end
