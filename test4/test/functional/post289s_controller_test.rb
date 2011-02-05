require 'test_helper'

class Post289sControllerTest < ActionController::TestCase
  setup do
    @post289 = post289s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:post289s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post289" do
    assert_difference('Post289.count') do
      post :create, :post289 => @post289.attributes
    end

    assert_redirected_to post289_path(assigns(:post289))
  end

  test "should show post289" do
    get :show, :id => @post289.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @post289.to_param
    assert_response :success
  end

  test "should update post289" do
    put :update, :id => @post289.to_param, :post289 => @post289.attributes
    assert_redirected_to post289_path(assigns(:post289))
  end

  test "should destroy post289" do
    assert_difference('Post289.count', -1) do
      delete :destroy, :id => @post289.to_param
    end

    assert_redirected_to post289s_path
  end
end
