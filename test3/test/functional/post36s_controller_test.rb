require 'test_helper'

class Post36sControllerTest < ActionController::TestCase
  setup do
    @post36 = post36s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:post36s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post36" do
    assert_difference('Post36.count') do
      post :create, :post36 => @post36.attributes
    end

    assert_redirected_to post36_path(assigns(:post36))
  end

  test "should show post36" do
    get :show, :id => @post36.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @post36.to_param
    assert_response :success
  end

  test "should update post36" do
    put :update, :id => @post36.to_param, :post36 => @post36.attributes
    assert_redirected_to post36_path(assigns(:post36))
  end

  test "should destroy post36" do
    assert_difference('Post36.count', -1) do
      delete :destroy, :id => @post36.to_param
    end

    assert_redirected_to post36s_path
  end
end
