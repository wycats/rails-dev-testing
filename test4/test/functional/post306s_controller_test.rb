require 'test_helper'

class Post306sControllerTest < ActionController::TestCase
  setup do
    @post306 = post306s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:post306s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post306" do
    assert_difference('Post306.count') do
      post :create, :post306 => @post306.attributes
    end

    assert_redirected_to post306_path(assigns(:post306))
  end

  test "should show post306" do
    get :show, :id => @post306.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @post306.to_param
    assert_response :success
  end

  test "should update post306" do
    put :update, :id => @post306.to_param, :post306 => @post306.attributes
    assert_redirected_to post306_path(assigns(:post306))
  end

  test "should destroy post306" do
    assert_difference('Post306.count', -1) do
      delete :destroy, :id => @post306.to_param
    end

    assert_redirected_to post306s_path
  end
end
