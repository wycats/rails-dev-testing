require 'test_helper'

class Post283sControllerTest < ActionController::TestCase
  setup do
    @post283 = post283s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:post283s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post283" do
    assert_difference('Post283.count') do
      post :create, :post283 => @post283.attributes
    end

    assert_redirected_to post283_path(assigns(:post283))
  end

  test "should show post283" do
    get :show, :id => @post283.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @post283.to_param
    assert_response :success
  end

  test "should update post283" do
    put :update, :id => @post283.to_param, :post283 => @post283.attributes
    assert_redirected_to post283_path(assigns(:post283))
  end

  test "should destroy post283" do
    assert_difference('Post283.count', -1) do
      delete :destroy, :id => @post283.to_param
    end

    assert_redirected_to post283s_path
  end
end
