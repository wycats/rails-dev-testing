require 'test_helper'

class Post361sControllerTest < ActionController::TestCase
  setup do
    @post361 = post361s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:post361s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post361" do
    assert_difference('Post361.count') do
      post :create, :post361 => @post361.attributes
    end

    assert_redirected_to post361_path(assigns(:post361))
  end

  test "should show post361" do
    get :show, :id => @post361.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @post361.to_param
    assert_response :success
  end

  test "should update post361" do
    put :update, :id => @post361.to_param, :post361 => @post361.attributes
    assert_redirected_to post361_path(assigns(:post361))
  end

  test "should destroy post361" do
    assert_difference('Post361.count', -1) do
      delete :destroy, :id => @post361.to_param
    end

    assert_redirected_to post361s_path
  end
end
