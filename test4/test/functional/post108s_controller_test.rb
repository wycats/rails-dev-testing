require 'test_helper'

class Post108sControllerTest < ActionController::TestCase
  setup do
    @post108 = post108s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:post108s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post108" do
    assert_difference('Post108.count') do
      post :create, :post108 => @post108.attributes
    end

    assert_redirected_to post108_path(assigns(:post108))
  end

  test "should show post108" do
    get :show, :id => @post108.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @post108.to_param
    assert_response :success
  end

  test "should update post108" do
    put :update, :id => @post108.to_param, :post108 => @post108.attributes
    assert_redirected_to post108_path(assigns(:post108))
  end

  test "should destroy post108" do
    assert_difference('Post108.count', -1) do
      delete :destroy, :id => @post108.to_param
    end

    assert_redirected_to post108s_path
  end
end
