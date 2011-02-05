require 'test_helper'

class Post476sControllerTest < ActionController::TestCase
  setup do
    @post476 = post476s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:post476s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post476" do
    assert_difference('Post476.count') do
      post :create, :post476 => @post476.attributes
    end

    assert_redirected_to post476_path(assigns(:post476))
  end

  test "should show post476" do
    get :show, :id => @post476.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @post476.to_param
    assert_response :success
  end

  test "should update post476" do
    put :update, :id => @post476.to_param, :post476 => @post476.attributes
    assert_redirected_to post476_path(assigns(:post476))
  end

  test "should destroy post476" do
    assert_difference('Post476.count', -1) do
      delete :destroy, :id => @post476.to_param
    end

    assert_redirected_to post476s_path
  end
end
