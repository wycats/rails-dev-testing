require 'test_helper'

class Post8sControllerTest < ActionController::TestCase
  setup do
    @post8 = post8s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:post8s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post8" do
    assert_difference('Post8.count') do
      post :create, :post8 => @post8.attributes
    end

    assert_redirected_to post8_path(assigns(:post8))
  end

  test "should show post8" do
    get :show, :id => @post8.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @post8.to_param
    assert_response :success
  end

  test "should update post8" do
    put :update, :id => @post8.to_param, :post8 => @post8.attributes
    assert_redirected_to post8_path(assigns(:post8))
  end

  test "should destroy post8" do
    assert_difference('Post8.count', -1) do
      delete :destroy, :id => @post8.to_param
    end

    assert_redirected_to post8s_path
  end
end
