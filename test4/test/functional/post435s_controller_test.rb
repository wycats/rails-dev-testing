require 'test_helper'

class Post435sControllerTest < ActionController::TestCase
  setup do
    @post435 = post435s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:post435s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post435" do
    assert_difference('Post435.count') do
      post :create, :post435 => @post435.attributes
    end

    assert_redirected_to post435_path(assigns(:post435))
  end

  test "should show post435" do
    get :show, :id => @post435.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @post435.to_param
    assert_response :success
  end

  test "should update post435" do
    put :update, :id => @post435.to_param, :post435 => @post435.attributes
    assert_redirected_to post435_path(assigns(:post435))
  end

  test "should destroy post435" do
    assert_difference('Post435.count', -1) do
      delete :destroy, :id => @post435.to_param
    end

    assert_redirected_to post435s_path
  end
end
