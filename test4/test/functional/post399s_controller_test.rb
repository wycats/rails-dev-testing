require 'test_helper'

class Post399sControllerTest < ActionController::TestCase
  setup do
    @post399 = post399s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:post399s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post399" do
    assert_difference('Post399.count') do
      post :create, :post399 => @post399.attributes
    end

    assert_redirected_to post399_path(assigns(:post399))
  end

  test "should show post399" do
    get :show, :id => @post399.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @post399.to_param
    assert_response :success
  end

  test "should update post399" do
    put :update, :id => @post399.to_param, :post399 => @post399.attributes
    assert_redirected_to post399_path(assigns(:post399))
  end

  test "should destroy post399" do
    assert_difference('Post399.count', -1) do
      delete :destroy, :id => @post399.to_param
    end

    assert_redirected_to post399s_path
  end
end
