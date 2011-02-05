require 'test_helper'

class Post349sControllerTest < ActionController::TestCase
  setup do
    @post349 = post349s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:post349s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post349" do
    assert_difference('Post349.count') do
      post :create, :post349 => @post349.attributes
    end

    assert_redirected_to post349_path(assigns(:post349))
  end

  test "should show post349" do
    get :show, :id => @post349.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @post349.to_param
    assert_response :success
  end

  test "should update post349" do
    put :update, :id => @post349.to_param, :post349 => @post349.attributes
    assert_redirected_to post349_path(assigns(:post349))
  end

  test "should destroy post349" do
    assert_difference('Post349.count', -1) do
      delete :destroy, :id => @post349.to_param
    end

    assert_redirected_to post349s_path
  end
end
