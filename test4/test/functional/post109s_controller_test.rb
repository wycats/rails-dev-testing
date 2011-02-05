require 'test_helper'

class Post109sControllerTest < ActionController::TestCase
  setup do
    @post109 = post109s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:post109s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post109" do
    assert_difference('Post109.count') do
      post :create, :post109 => @post109.attributes
    end

    assert_redirected_to post109_path(assigns(:post109))
  end

  test "should show post109" do
    get :show, :id => @post109.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @post109.to_param
    assert_response :success
  end

  test "should update post109" do
    put :update, :id => @post109.to_param, :post109 => @post109.attributes
    assert_redirected_to post109_path(assigns(:post109))
  end

  test "should destroy post109" do
    assert_difference('Post109.count', -1) do
      delete :destroy, :id => @post109.to_param
    end

    assert_redirected_to post109s_path
  end
end
