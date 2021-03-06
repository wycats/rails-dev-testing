require 'test_helper'

class Post106sControllerTest < ActionController::TestCase
  setup do
    @post106 = post106s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:post106s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post106" do
    assert_difference('Post106.count') do
      post :create, :post106 => @post106.attributes
    end

    assert_redirected_to post106_path(assigns(:post106))
  end

  test "should show post106" do
    get :show, :id => @post106.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @post106.to_param
    assert_response :success
  end

  test "should update post106" do
    put :update, :id => @post106.to_param, :post106 => @post106.attributes
    assert_redirected_to post106_path(assigns(:post106))
  end

  test "should destroy post106" do
    assert_difference('Post106.count', -1) do
      delete :destroy, :id => @post106.to_param
    end

    assert_redirected_to post106s_path
  end
end
