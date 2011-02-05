require 'test_helper'

class Post312sControllerTest < ActionController::TestCase
  setup do
    @post312 = post312s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:post312s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post312" do
    assert_difference('Post312.count') do
      post :create, :post312 => @post312.attributes
    end

    assert_redirected_to post312_path(assigns(:post312))
  end

  test "should show post312" do
    get :show, :id => @post312.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @post312.to_param
    assert_response :success
  end

  test "should update post312" do
    put :update, :id => @post312.to_param, :post312 => @post312.attributes
    assert_redirected_to post312_path(assigns(:post312))
  end

  test "should destroy post312" do
    assert_difference('Post312.count', -1) do
      delete :destroy, :id => @post312.to_param
    end

    assert_redirected_to post312s_path
  end
end
