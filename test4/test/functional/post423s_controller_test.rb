require 'test_helper'

class Post423sControllerTest < ActionController::TestCase
  setup do
    @post423 = post423s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:post423s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post423" do
    assert_difference('Post423.count') do
      post :create, :post423 => @post423.attributes
    end

    assert_redirected_to post423_path(assigns(:post423))
  end

  test "should show post423" do
    get :show, :id => @post423.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @post423.to_param
    assert_response :success
  end

  test "should update post423" do
    put :update, :id => @post423.to_param, :post423 => @post423.attributes
    assert_redirected_to post423_path(assigns(:post423))
  end

  test "should destroy post423" do
    assert_difference('Post423.count', -1) do
      delete :destroy, :id => @post423.to_param
    end

    assert_redirected_to post423s_path
  end
end
