require 'test_helper'

class Post122sControllerTest < ActionController::TestCase
  setup do
    @post122 = post122s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:post122s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post122" do
    assert_difference('Post122.count') do
      post :create, :post122 => @post122.attributes
    end

    assert_redirected_to post122_path(assigns(:post122))
  end

  test "should show post122" do
    get :show, :id => @post122.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @post122.to_param
    assert_response :success
  end

  test "should update post122" do
    put :update, :id => @post122.to_param, :post122 => @post122.attributes
    assert_redirected_to post122_path(assigns(:post122))
  end

  test "should destroy post122" do
    assert_difference('Post122.count', -1) do
      delete :destroy, :id => @post122.to_param
    end

    assert_redirected_to post122s_path
  end
end
