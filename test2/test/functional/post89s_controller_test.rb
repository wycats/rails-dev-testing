require 'test_helper'

class Post89sControllerTest < ActionController::TestCase
  setup do
    @post89 = post89s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:post89s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post89" do
    assert_difference('Post89.count') do
      post :create, :post89 => @post89.attributes
    end

    assert_redirected_to post89_path(assigns(:post89))
  end

  test "should show post89" do
    get :show, :id => @post89.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @post89.to_param
    assert_response :success
  end

  test "should update post89" do
    put :update, :id => @post89.to_param, :post89 => @post89.attributes
    assert_redirected_to post89_path(assigns(:post89))
  end

  test "should destroy post89" do
    assert_difference('Post89.count', -1) do
      delete :destroy, :id => @post89.to_param
    end

    assert_redirected_to post89s_path
  end
end
