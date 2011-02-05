require 'test_helper'

class Post162sControllerTest < ActionController::TestCase
  setup do
    @post162 = post162s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:post162s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post162" do
    assert_difference('Post162.count') do
      post :create, :post162 => @post162.attributes
    end

    assert_redirected_to post162_path(assigns(:post162))
  end

  test "should show post162" do
    get :show, :id => @post162.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @post162.to_param
    assert_response :success
  end

  test "should update post162" do
    put :update, :id => @post162.to_param, :post162 => @post162.attributes
    assert_redirected_to post162_path(assigns(:post162))
  end

  test "should destroy post162" do
    assert_difference('Post162.count', -1) do
      delete :destroy, :id => @post162.to_param
    end

    assert_redirected_to post162s_path
  end
end
