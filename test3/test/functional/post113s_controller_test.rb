require 'test_helper'

class Post113sControllerTest < ActionController::TestCase
  setup do
    @post113 = post113s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:post113s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post113" do
    assert_difference('Post113.count') do
      post :create, :post113 => @post113.attributes
    end

    assert_redirected_to post113_path(assigns(:post113))
  end

  test "should show post113" do
    get :show, :id => @post113.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @post113.to_param
    assert_response :success
  end

  test "should update post113" do
    put :update, :id => @post113.to_param, :post113 => @post113.attributes
    assert_redirected_to post113_path(assigns(:post113))
  end

  test "should destroy post113" do
    assert_difference('Post113.count', -1) do
      delete :destroy, :id => @post113.to_param
    end

    assert_redirected_to post113s_path
  end
end
