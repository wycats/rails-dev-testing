require 'test_helper'

class Post426sControllerTest < ActionController::TestCase
  setup do
    @post426 = post426s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:post426s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post426" do
    assert_difference('Post426.count') do
      post :create, :post426 => @post426.attributes
    end

    assert_redirected_to post426_path(assigns(:post426))
  end

  test "should show post426" do
    get :show, :id => @post426.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @post426.to_param
    assert_response :success
  end

  test "should update post426" do
    put :update, :id => @post426.to_param, :post426 => @post426.attributes
    assert_redirected_to post426_path(assigns(:post426))
  end

  test "should destroy post426" do
    assert_difference('Post426.count', -1) do
      delete :destroy, :id => @post426.to_param
    end

    assert_redirected_to post426s_path
  end
end
