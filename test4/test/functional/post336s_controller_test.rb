require 'test_helper'

class Post336sControllerTest < ActionController::TestCase
  setup do
    @post336 = post336s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:post336s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post336" do
    assert_difference('Post336.count') do
      post :create, :post336 => @post336.attributes
    end

    assert_redirected_to post336_path(assigns(:post336))
  end

  test "should show post336" do
    get :show, :id => @post336.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @post336.to_param
    assert_response :success
  end

  test "should update post336" do
    put :update, :id => @post336.to_param, :post336 => @post336.attributes
    assert_redirected_to post336_path(assigns(:post336))
  end

  test "should destroy post336" do
    assert_difference('Post336.count', -1) do
      delete :destroy, :id => @post336.to_param
    end

    assert_redirected_to post336s_path
  end
end
