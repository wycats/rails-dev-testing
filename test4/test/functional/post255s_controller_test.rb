require 'test_helper'

class Post255sControllerTest < ActionController::TestCase
  setup do
    @post255 = post255s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:post255s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post255" do
    assert_difference('Post255.count') do
      post :create, :post255 => @post255.attributes
    end

    assert_redirected_to post255_path(assigns(:post255))
  end

  test "should show post255" do
    get :show, :id => @post255.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @post255.to_param
    assert_response :success
  end

  test "should update post255" do
    put :update, :id => @post255.to_param, :post255 => @post255.attributes
    assert_redirected_to post255_path(assigns(:post255))
  end

  test "should destroy post255" do
    assert_difference('Post255.count', -1) do
      delete :destroy, :id => @post255.to_param
    end

    assert_redirected_to post255s_path
  end
end
