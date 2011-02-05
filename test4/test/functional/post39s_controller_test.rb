require 'test_helper'

class Post39sControllerTest < ActionController::TestCase
  setup do
    @post39 = post39s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:post39s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post39" do
    assert_difference('Post39.count') do
      post :create, :post39 => @post39.attributes
    end

    assert_redirected_to post39_path(assigns(:post39))
  end

  test "should show post39" do
    get :show, :id => @post39.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @post39.to_param
    assert_response :success
  end

  test "should update post39" do
    put :update, :id => @post39.to_param, :post39 => @post39.attributes
    assert_redirected_to post39_path(assigns(:post39))
  end

  test "should destroy post39" do
    assert_difference('Post39.count', -1) do
      delete :destroy, :id => @post39.to_param
    end

    assert_redirected_to post39s_path
  end
end
