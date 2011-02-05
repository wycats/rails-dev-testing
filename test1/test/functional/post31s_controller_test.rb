require 'test_helper'

class Post31sControllerTest < ActionController::TestCase
  setup do
    @post31 = post31s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:post31s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post31" do
    assert_difference('Post31.count') do
      post :create, :post31 => @post31.attributes
    end

    assert_redirected_to post31_path(assigns(:post31))
  end

  test "should show post31" do
    get :show, :id => @post31.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @post31.to_param
    assert_response :success
  end

  test "should update post31" do
    put :update, :id => @post31.to_param, :post31 => @post31.attributes
    assert_redirected_to post31_path(assigns(:post31))
  end

  test "should destroy post31" do
    assert_difference('Post31.count', -1) do
      delete :destroy, :id => @post31.to_param
    end

    assert_redirected_to post31s_path
  end
end
