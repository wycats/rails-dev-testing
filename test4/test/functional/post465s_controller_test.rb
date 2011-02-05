require 'test_helper'

class Post465sControllerTest < ActionController::TestCase
  setup do
    @post465 = post465s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:post465s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post465" do
    assert_difference('Post465.count') do
      post :create, :post465 => @post465.attributes
    end

    assert_redirected_to post465_path(assigns(:post465))
  end

  test "should show post465" do
    get :show, :id => @post465.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @post465.to_param
    assert_response :success
  end

  test "should update post465" do
    put :update, :id => @post465.to_param, :post465 => @post465.attributes
    assert_redirected_to post465_path(assigns(:post465))
  end

  test "should destroy post465" do
    assert_difference('Post465.count', -1) do
      delete :destroy, :id => @post465.to_param
    end

    assert_redirected_to post465s_path
  end
end
