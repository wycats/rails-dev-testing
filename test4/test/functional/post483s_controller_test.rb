require 'test_helper'

class Post483sControllerTest < ActionController::TestCase
  setup do
    @post483 = post483s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:post483s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post483" do
    assert_difference('Post483.count') do
      post :create, :post483 => @post483.attributes
    end

    assert_redirected_to post483_path(assigns(:post483))
  end

  test "should show post483" do
    get :show, :id => @post483.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @post483.to_param
    assert_response :success
  end

  test "should update post483" do
    put :update, :id => @post483.to_param, :post483 => @post483.attributes
    assert_redirected_to post483_path(assigns(:post483))
  end

  test "should destroy post483" do
    assert_difference('Post483.count', -1) do
      delete :destroy, :id => @post483.to_param
    end

    assert_redirected_to post483s_path
  end
end
