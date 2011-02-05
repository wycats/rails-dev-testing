require 'test_helper'

class Post172sControllerTest < ActionController::TestCase
  setup do
    @post172 = post172s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:post172s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post172" do
    assert_difference('Post172.count') do
      post :create, :post172 => @post172.attributes
    end

    assert_redirected_to post172_path(assigns(:post172))
  end

  test "should show post172" do
    get :show, :id => @post172.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @post172.to_param
    assert_response :success
  end

  test "should update post172" do
    put :update, :id => @post172.to_param, :post172 => @post172.attributes
    assert_redirected_to post172_path(assigns(:post172))
  end

  test "should destroy post172" do
    assert_difference('Post172.count', -1) do
      delete :destroy, :id => @post172.to_param
    end

    assert_redirected_to post172s_path
  end
end
