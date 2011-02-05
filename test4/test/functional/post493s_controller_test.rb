require 'test_helper'

class Post493sControllerTest < ActionController::TestCase
  setup do
    @post493 = post493s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:post493s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post493" do
    assert_difference('Post493.count') do
      post :create, :post493 => @post493.attributes
    end

    assert_redirected_to post493_path(assigns(:post493))
  end

  test "should show post493" do
    get :show, :id => @post493.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @post493.to_param
    assert_response :success
  end

  test "should update post493" do
    put :update, :id => @post493.to_param, :post493 => @post493.attributes
    assert_redirected_to post493_path(assigns(:post493))
  end

  test "should destroy post493" do
    assert_difference('Post493.count', -1) do
      delete :destroy, :id => @post493.to_param
    end

    assert_redirected_to post493s_path
  end
end
