require 'test_helper'

class Post153sControllerTest < ActionController::TestCase
  setup do
    @post153 = post153s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:post153s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post153" do
    assert_difference('Post153.count') do
      post :create, :post153 => @post153.attributes
    end

    assert_redirected_to post153_path(assigns(:post153))
  end

  test "should show post153" do
    get :show, :id => @post153.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @post153.to_param
    assert_response :success
  end

  test "should update post153" do
    put :update, :id => @post153.to_param, :post153 => @post153.attributes
    assert_redirected_to post153_path(assigns(:post153))
  end

  test "should destroy post153" do
    assert_difference('Post153.count', -1) do
      delete :destroy, :id => @post153.to_param
    end

    assert_redirected_to post153s_path
  end
end
