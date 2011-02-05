require 'test_helper'

class Post404sControllerTest < ActionController::TestCase
  setup do
    @post404 = post404s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:post404s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post404" do
    assert_difference('Post404.count') do
      post :create, :post404 => @post404.attributes
    end

    assert_redirected_to post404_path(assigns(:post404))
  end

  test "should show post404" do
    get :show, :id => @post404.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @post404.to_param
    assert_response :success
  end

  test "should update post404" do
    put :update, :id => @post404.to_param, :post404 => @post404.attributes
    assert_redirected_to post404_path(assigns(:post404))
  end

  test "should destroy post404" do
    assert_difference('Post404.count', -1) do
      delete :destroy, :id => @post404.to_param
    end

    assert_redirected_to post404s_path
  end
end
