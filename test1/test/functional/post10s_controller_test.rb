require 'test_helper'

class Post10sControllerTest < ActionController::TestCase
  setup do
    @post10 = post10s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:post10s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post10" do
    assert_difference('Post10.count') do
      post :create, :post10 => @post10.attributes
    end

    assert_redirected_to post10_path(assigns(:post10))
  end

  test "should show post10" do
    get :show, :id => @post10.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @post10.to_param
    assert_response :success
  end

  test "should update post10" do
    put :update, :id => @post10.to_param, :post10 => @post10.attributes
    assert_redirected_to post10_path(assigns(:post10))
  end

  test "should destroy post10" do
    assert_difference('Post10.count', -1) do
      delete :destroy, :id => @post10.to_param
    end

    assert_redirected_to post10s_path
  end
end
