require 'test_helper'

class Post85sControllerTest < ActionController::TestCase
  setup do
    @post85 = post85s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:post85s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post85" do
    assert_difference('Post85.count') do
      post :create, :post85 => @post85.attributes
    end

    assert_redirected_to post85_path(assigns(:post85))
  end

  test "should show post85" do
    get :show, :id => @post85.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @post85.to_param
    assert_response :success
  end

  test "should update post85" do
    put :update, :id => @post85.to_param, :post85 => @post85.attributes
    assert_redirected_to post85_path(assigns(:post85))
  end

  test "should destroy post85" do
    assert_difference('Post85.count', -1) do
      delete :destroy, :id => @post85.to_param
    end

    assert_redirected_to post85s_path
  end
end
