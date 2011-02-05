require 'test_helper'

class Post282sControllerTest < ActionController::TestCase
  setup do
    @post282 = post282s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:post282s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post282" do
    assert_difference('Post282.count') do
      post :create, :post282 => @post282.attributes
    end

    assert_redirected_to post282_path(assigns(:post282))
  end

  test "should show post282" do
    get :show, :id => @post282.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @post282.to_param
    assert_response :success
  end

  test "should update post282" do
    put :update, :id => @post282.to_param, :post282 => @post282.attributes
    assert_redirected_to post282_path(assigns(:post282))
  end

  test "should destroy post282" do
    assert_difference('Post282.count', -1) do
      delete :destroy, :id => @post282.to_param
    end

    assert_redirected_to post282s_path
  end
end
