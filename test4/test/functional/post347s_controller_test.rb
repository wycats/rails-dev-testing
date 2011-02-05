require 'test_helper'

class Post347sControllerTest < ActionController::TestCase
  setup do
    @post347 = post347s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:post347s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post347" do
    assert_difference('Post347.count') do
      post :create, :post347 => @post347.attributes
    end

    assert_redirected_to post347_path(assigns(:post347))
  end

  test "should show post347" do
    get :show, :id => @post347.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @post347.to_param
    assert_response :success
  end

  test "should update post347" do
    put :update, :id => @post347.to_param, :post347 => @post347.attributes
    assert_redirected_to post347_path(assigns(:post347))
  end

  test "should destroy post347" do
    assert_difference('Post347.count', -1) do
      delete :destroy, :id => @post347.to_param
    end

    assert_redirected_to post347s_path
  end
end
