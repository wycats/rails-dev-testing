require 'test_helper'

class Post95sControllerTest < ActionController::TestCase
  setup do
    @post95 = post95s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:post95s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post95" do
    assert_difference('Post95.count') do
      post :create, :post95 => @post95.attributes
    end

    assert_redirected_to post95_path(assigns(:post95))
  end

  test "should show post95" do
    get :show, :id => @post95.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @post95.to_param
    assert_response :success
  end

  test "should update post95" do
    put :update, :id => @post95.to_param, :post95 => @post95.attributes
    assert_redirected_to post95_path(assigns(:post95))
  end

  test "should destroy post95" do
    assert_difference('Post95.count', -1) do
      delete :destroy, :id => @post95.to_param
    end

    assert_redirected_to post95s_path
  end
end
