require 'test_helper'

class Post192sControllerTest < ActionController::TestCase
  setup do
    @post192 = post192s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:post192s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post192" do
    assert_difference('Post192.count') do
      post :create, :post192 => @post192.attributes
    end

    assert_redirected_to post192_path(assigns(:post192))
  end

  test "should show post192" do
    get :show, :id => @post192.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @post192.to_param
    assert_response :success
  end

  test "should update post192" do
    put :update, :id => @post192.to_param, :post192 => @post192.attributes
    assert_redirected_to post192_path(assigns(:post192))
  end

  test "should destroy post192" do
    assert_difference('Post192.count', -1) do
      delete :destroy, :id => @post192.to_param
    end

    assert_redirected_to post192s_path
  end
end
