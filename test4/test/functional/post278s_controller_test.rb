require 'test_helper'

class Post278sControllerTest < ActionController::TestCase
  setup do
    @post278 = post278s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:post278s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post278" do
    assert_difference('Post278.count') do
      post :create, :post278 => @post278.attributes
    end

    assert_redirected_to post278_path(assigns(:post278))
  end

  test "should show post278" do
    get :show, :id => @post278.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @post278.to_param
    assert_response :success
  end

  test "should update post278" do
    put :update, :id => @post278.to_param, :post278 => @post278.attributes
    assert_redirected_to post278_path(assigns(:post278))
  end

  test "should destroy post278" do
    assert_difference('Post278.count', -1) do
      delete :destroy, :id => @post278.to_param
    end

    assert_redirected_to post278s_path
  end
end
