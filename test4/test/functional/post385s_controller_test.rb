require 'test_helper'

class Post385sControllerTest < ActionController::TestCase
  setup do
    @post385 = post385s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:post385s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post385" do
    assert_difference('Post385.count') do
      post :create, :post385 => @post385.attributes
    end

    assert_redirected_to post385_path(assigns(:post385))
  end

  test "should show post385" do
    get :show, :id => @post385.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @post385.to_param
    assert_response :success
  end

  test "should update post385" do
    put :update, :id => @post385.to_param, :post385 => @post385.attributes
    assert_redirected_to post385_path(assigns(:post385))
  end

  test "should destroy post385" do
    assert_difference('Post385.count', -1) do
      delete :destroy, :id => @post385.to_param
    end

    assert_redirected_to post385s_path
  end
end
