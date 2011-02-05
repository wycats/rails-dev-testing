require 'test_helper'

class Post389sControllerTest < ActionController::TestCase
  setup do
    @post389 = post389s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:post389s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post389" do
    assert_difference('Post389.count') do
      post :create, :post389 => @post389.attributes
    end

    assert_redirected_to post389_path(assigns(:post389))
  end

  test "should show post389" do
    get :show, :id => @post389.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @post389.to_param
    assert_response :success
  end

  test "should update post389" do
    put :update, :id => @post389.to_param, :post389 => @post389.attributes
    assert_redirected_to post389_path(assigns(:post389))
  end

  test "should destroy post389" do
    assert_difference('Post389.count', -1) do
      delete :destroy, :id => @post389.to_param
    end

    assert_redirected_to post389s_path
  end
end
