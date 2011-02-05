require 'test_helper'

class Post304sControllerTest < ActionController::TestCase
  setup do
    @post304 = post304s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:post304s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post304" do
    assert_difference('Post304.count') do
      post :create, :post304 => @post304.attributes
    end

    assert_redirected_to post304_path(assigns(:post304))
  end

  test "should show post304" do
    get :show, :id => @post304.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @post304.to_param
    assert_response :success
  end

  test "should update post304" do
    put :update, :id => @post304.to_param, :post304 => @post304.attributes
    assert_redirected_to post304_path(assigns(:post304))
  end

  test "should destroy post304" do
    assert_difference('Post304.count', -1) do
      delete :destroy, :id => @post304.to_param
    end

    assert_redirected_to post304s_path
  end
end
