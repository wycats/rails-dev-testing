require 'test_helper'

class Post117sControllerTest < ActionController::TestCase
  setup do
    @post117 = post117s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:post117s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post117" do
    assert_difference('Post117.count') do
      post :create, :post117 => @post117.attributes
    end

    assert_redirected_to post117_path(assigns(:post117))
  end

  test "should show post117" do
    get :show, :id => @post117.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @post117.to_param
    assert_response :success
  end

  test "should update post117" do
    put :update, :id => @post117.to_param, :post117 => @post117.attributes
    assert_redirected_to post117_path(assigns(:post117))
  end

  test "should destroy post117" do
    assert_difference('Post117.count', -1) do
      delete :destroy, :id => @post117.to_param
    end

    assert_redirected_to post117s_path
  end
end
