require 'test_helper'

class Post229sControllerTest < ActionController::TestCase
  setup do
    @post229 = post229s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:post229s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post229" do
    assert_difference('Post229.count') do
      post :create, :post229 => @post229.attributes
    end

    assert_redirected_to post229_path(assigns(:post229))
  end

  test "should show post229" do
    get :show, :id => @post229.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @post229.to_param
    assert_response :success
  end

  test "should update post229" do
    put :update, :id => @post229.to_param, :post229 => @post229.attributes
    assert_redirected_to post229_path(assigns(:post229))
  end

  test "should destroy post229" do
    assert_difference('Post229.count', -1) do
      delete :destroy, :id => @post229.to_param
    end

    assert_redirected_to post229s_path
  end
end
