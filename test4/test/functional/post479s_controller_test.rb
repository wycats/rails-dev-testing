require 'test_helper'

class Post479sControllerTest < ActionController::TestCase
  setup do
    @post479 = post479s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:post479s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post479" do
    assert_difference('Post479.count') do
      post :create, :post479 => @post479.attributes
    end

    assert_redirected_to post479_path(assigns(:post479))
  end

  test "should show post479" do
    get :show, :id => @post479.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @post479.to_param
    assert_response :success
  end

  test "should update post479" do
    put :update, :id => @post479.to_param, :post479 => @post479.attributes
    assert_redirected_to post479_path(assigns(:post479))
  end

  test "should destroy post479" do
    assert_difference('Post479.count', -1) do
      delete :destroy, :id => @post479.to_param
    end

    assert_redirected_to post479s_path
  end
end
