require 'test_helper'

class Post260sControllerTest < ActionController::TestCase
  setup do
    @post260 = post260s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:post260s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post260" do
    assert_difference('Post260.count') do
      post :create, :post260 => @post260.attributes
    end

    assert_redirected_to post260_path(assigns(:post260))
  end

  test "should show post260" do
    get :show, :id => @post260.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @post260.to_param
    assert_response :success
  end

  test "should update post260" do
    put :update, :id => @post260.to_param, :post260 => @post260.attributes
    assert_redirected_to post260_path(assigns(:post260))
  end

  test "should destroy post260" do
    assert_difference('Post260.count', -1) do
      delete :destroy, :id => @post260.to_param
    end

    assert_redirected_to post260s_path
  end
end
