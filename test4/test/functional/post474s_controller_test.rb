require 'test_helper'

class Post474sControllerTest < ActionController::TestCase
  setup do
    @post474 = post474s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:post474s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post474" do
    assert_difference('Post474.count') do
      post :create, :post474 => @post474.attributes
    end

    assert_redirected_to post474_path(assigns(:post474))
  end

  test "should show post474" do
    get :show, :id => @post474.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @post474.to_param
    assert_response :success
  end

  test "should update post474" do
    put :update, :id => @post474.to_param, :post474 => @post474.attributes
    assert_redirected_to post474_path(assigns(:post474))
  end

  test "should destroy post474" do
    assert_difference('Post474.count', -1) do
      delete :destroy, :id => @post474.to_param
    end

    assert_redirected_to post474s_path
  end
end
