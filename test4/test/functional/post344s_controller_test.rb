require 'test_helper'

class Post344sControllerTest < ActionController::TestCase
  setup do
    @post344 = post344s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:post344s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post344" do
    assert_difference('Post344.count') do
      post :create, :post344 => @post344.attributes
    end

    assert_redirected_to post344_path(assigns(:post344))
  end

  test "should show post344" do
    get :show, :id => @post344.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @post344.to_param
    assert_response :success
  end

  test "should update post344" do
    put :update, :id => @post344.to_param, :post344 => @post344.attributes
    assert_redirected_to post344_path(assigns(:post344))
  end

  test "should destroy post344" do
    assert_difference('Post344.count', -1) do
      delete :destroy, :id => @post344.to_param
    end

    assert_redirected_to post344s_path
  end
end
