require 'test_helper'

class Post243sControllerTest < ActionController::TestCase
  setup do
    @post243 = post243s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:post243s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post243" do
    assert_difference('Post243.count') do
      post :create, :post243 => @post243.attributes
    end

    assert_redirected_to post243_path(assigns(:post243))
  end

  test "should show post243" do
    get :show, :id => @post243.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @post243.to_param
    assert_response :success
  end

  test "should update post243" do
    put :update, :id => @post243.to_param, :post243 => @post243.attributes
    assert_redirected_to post243_path(assigns(:post243))
  end

  test "should destroy post243" do
    assert_difference('Post243.count', -1) do
      delete :destroy, :id => @post243.to_param
    end

    assert_redirected_to post243s_path
  end
end
