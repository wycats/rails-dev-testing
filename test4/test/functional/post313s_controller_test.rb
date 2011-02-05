require 'test_helper'

class Post313sControllerTest < ActionController::TestCase
  setup do
    @post313 = post313s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:post313s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post313" do
    assert_difference('Post313.count') do
      post :create, :post313 => @post313.attributes
    end

    assert_redirected_to post313_path(assigns(:post313))
  end

  test "should show post313" do
    get :show, :id => @post313.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @post313.to_param
    assert_response :success
  end

  test "should update post313" do
    put :update, :id => @post313.to_param, :post313 => @post313.attributes
    assert_redirected_to post313_path(assigns(:post313))
  end

  test "should destroy post313" do
    assert_difference('Post313.count', -1) do
      delete :destroy, :id => @post313.to_param
    end

    assert_redirected_to post313s_path
  end
end
