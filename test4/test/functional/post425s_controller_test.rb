require 'test_helper'

class Post425sControllerTest < ActionController::TestCase
  setup do
    @post425 = post425s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:post425s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post425" do
    assert_difference('Post425.count') do
      post :create, :post425 => @post425.attributes
    end

    assert_redirected_to post425_path(assigns(:post425))
  end

  test "should show post425" do
    get :show, :id => @post425.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @post425.to_param
    assert_response :success
  end

  test "should update post425" do
    put :update, :id => @post425.to_param, :post425 => @post425.attributes
    assert_redirected_to post425_path(assigns(:post425))
  end

  test "should destroy post425" do
    assert_difference('Post425.count', -1) do
      delete :destroy, :id => @post425.to_param
    end

    assert_redirected_to post425s_path
  end
end
