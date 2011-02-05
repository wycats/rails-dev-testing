require 'test_helper'

class Post14sControllerTest < ActionController::TestCase
  setup do
    @post14 = post14s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:post14s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post14" do
    assert_difference('Post14.count') do
      post :create, :post14 => @post14.attributes
    end

    assert_redirected_to post14_path(assigns(:post14))
  end

  test "should show post14" do
    get :show, :id => @post14.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @post14.to_param
    assert_response :success
  end

  test "should update post14" do
    put :update, :id => @post14.to_param, :post14 => @post14.attributes
    assert_redirected_to post14_path(assigns(:post14))
  end

  test "should destroy post14" do
    assert_difference('Post14.count', -1) do
      delete :destroy, :id => @post14.to_param
    end

    assert_redirected_to post14s_path
  end
end
