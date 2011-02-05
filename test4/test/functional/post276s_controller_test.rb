require 'test_helper'

class Post276sControllerTest < ActionController::TestCase
  setup do
    @post276 = post276s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:post276s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post276" do
    assert_difference('Post276.count') do
      post :create, :post276 => @post276.attributes
    end

    assert_redirected_to post276_path(assigns(:post276))
  end

  test "should show post276" do
    get :show, :id => @post276.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @post276.to_param
    assert_response :success
  end

  test "should update post276" do
    put :update, :id => @post276.to_param, :post276 => @post276.attributes
    assert_redirected_to post276_path(assigns(:post276))
  end

  test "should destroy post276" do
    assert_difference('Post276.count', -1) do
      delete :destroy, :id => @post276.to_param
    end

    assert_redirected_to post276s_path
  end
end
