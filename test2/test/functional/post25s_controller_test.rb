require 'test_helper'

class Post25sControllerTest < ActionController::TestCase
  setup do
    @post25 = post25s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:post25s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post25" do
    assert_difference('Post25.count') do
      post :create, :post25 => @post25.attributes
    end

    assert_redirected_to post25_path(assigns(:post25))
  end

  test "should show post25" do
    get :show, :id => @post25.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @post25.to_param
    assert_response :success
  end

  test "should update post25" do
    put :update, :id => @post25.to_param, :post25 => @post25.attributes
    assert_redirected_to post25_path(assigns(:post25))
  end

  test "should destroy post25" do
    assert_difference('Post25.count', -1) do
      delete :destroy, :id => @post25.to_param
    end

    assert_redirected_to post25s_path
  end
end
