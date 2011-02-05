require 'test_helper'

class Post13sControllerTest < ActionController::TestCase
  setup do
    @post13 = post13s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:post13s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post13" do
    assert_difference('Post13.count') do
      post :create, :post13 => @post13.attributes
    end

    assert_redirected_to post13_path(assigns(:post13))
  end

  test "should show post13" do
    get :show, :id => @post13.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @post13.to_param
    assert_response :success
  end

  test "should update post13" do
    put :update, :id => @post13.to_param, :post13 => @post13.attributes
    assert_redirected_to post13_path(assigns(:post13))
  end

  test "should destroy post13" do
    assert_difference('Post13.count', -1) do
      delete :destroy, :id => @post13.to_param
    end

    assert_redirected_to post13s_path
  end
end
