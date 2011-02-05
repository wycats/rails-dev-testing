require 'test_helper'

class Post57sControllerTest < ActionController::TestCase
  setup do
    @post57 = post57s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:post57s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post57" do
    assert_difference('Post57.count') do
      post :create, :post57 => @post57.attributes
    end

    assert_redirected_to post57_path(assigns(:post57))
  end

  test "should show post57" do
    get :show, :id => @post57.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @post57.to_param
    assert_response :success
  end

  test "should update post57" do
    put :update, :id => @post57.to_param, :post57 => @post57.attributes
    assert_redirected_to post57_path(assigns(:post57))
  end

  test "should destroy post57" do
    assert_difference('Post57.count', -1) do
      delete :destroy, :id => @post57.to_param
    end

    assert_redirected_to post57s_path
  end
end
