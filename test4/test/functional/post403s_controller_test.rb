require 'test_helper'

class Post403sControllerTest < ActionController::TestCase
  setup do
    @post403 = post403s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:post403s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post403" do
    assert_difference('Post403.count') do
      post :create, :post403 => @post403.attributes
    end

    assert_redirected_to post403_path(assigns(:post403))
  end

  test "should show post403" do
    get :show, :id => @post403.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @post403.to_param
    assert_response :success
  end

  test "should update post403" do
    put :update, :id => @post403.to_param, :post403 => @post403.attributes
    assert_redirected_to post403_path(assigns(:post403))
  end

  test "should destroy post403" do
    assert_difference('Post403.count', -1) do
      delete :destroy, :id => @post403.to_param
    end

    assert_redirected_to post403s_path
  end
end
