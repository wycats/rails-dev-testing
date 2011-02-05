require 'test_helper'

class Post193sControllerTest < ActionController::TestCase
  setup do
    @post193 = post193s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:post193s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post193" do
    assert_difference('Post193.count') do
      post :create, :post193 => @post193.attributes
    end

    assert_redirected_to post193_path(assigns(:post193))
  end

  test "should show post193" do
    get :show, :id => @post193.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @post193.to_param
    assert_response :success
  end

  test "should update post193" do
    put :update, :id => @post193.to_param, :post193 => @post193.attributes
    assert_redirected_to post193_path(assigns(:post193))
  end

  test "should destroy post193" do
    assert_difference('Post193.count', -1) do
      delete :destroy, :id => @post193.to_param
    end

    assert_redirected_to post193s_path
  end
end
