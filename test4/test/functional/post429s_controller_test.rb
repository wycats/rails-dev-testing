require 'test_helper'

class Post429sControllerTest < ActionController::TestCase
  setup do
    @post429 = post429s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:post429s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post429" do
    assert_difference('Post429.count') do
      post :create, :post429 => @post429.attributes
    end

    assert_redirected_to post429_path(assigns(:post429))
  end

  test "should show post429" do
    get :show, :id => @post429.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @post429.to_param
    assert_response :success
  end

  test "should update post429" do
    put :update, :id => @post429.to_param, :post429 => @post429.attributes
    assert_redirected_to post429_path(assigns(:post429))
  end

  test "should destroy post429" do
    assert_difference('Post429.count', -1) do
      delete :destroy, :id => @post429.to_param
    end

    assert_redirected_to post429s_path
  end
end
