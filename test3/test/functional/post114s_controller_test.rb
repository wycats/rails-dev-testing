require 'test_helper'

class Post114sControllerTest < ActionController::TestCase
  setup do
    @post114 = post114s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:post114s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post114" do
    assert_difference('Post114.count') do
      post :create, :post114 => @post114.attributes
    end

    assert_redirected_to post114_path(assigns(:post114))
  end

  test "should show post114" do
    get :show, :id => @post114.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @post114.to_param
    assert_response :success
  end

  test "should update post114" do
    put :update, :id => @post114.to_param, :post114 => @post114.attributes
    assert_redirected_to post114_path(assigns(:post114))
  end

  test "should destroy post114" do
    assert_difference('Post114.count', -1) do
      delete :destroy, :id => @post114.to_param
    end

    assert_redirected_to post114s_path
  end
end
