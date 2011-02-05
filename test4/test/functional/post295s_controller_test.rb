require 'test_helper'

class Post295sControllerTest < ActionController::TestCase
  setup do
    @post295 = post295s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:post295s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post295" do
    assert_difference('Post295.count') do
      post :create, :post295 => @post295.attributes
    end

    assert_redirected_to post295_path(assigns(:post295))
  end

  test "should show post295" do
    get :show, :id => @post295.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @post295.to_param
    assert_response :success
  end

  test "should update post295" do
    put :update, :id => @post295.to_param, :post295 => @post295.attributes
    assert_redirected_to post295_path(assigns(:post295))
  end

  test "should destroy post295" do
    assert_difference('Post295.count', -1) do
      delete :destroy, :id => @post295.to_param
    end

    assert_redirected_to post295s_path
  end
end
