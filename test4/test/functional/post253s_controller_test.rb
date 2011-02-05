require 'test_helper'

class Post253sControllerTest < ActionController::TestCase
  setup do
    @post253 = post253s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:post253s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post253" do
    assert_difference('Post253.count') do
      post :create, :post253 => @post253.attributes
    end

    assert_redirected_to post253_path(assigns(:post253))
  end

  test "should show post253" do
    get :show, :id => @post253.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @post253.to_param
    assert_response :success
  end

  test "should update post253" do
    put :update, :id => @post253.to_param, :post253 => @post253.attributes
    assert_redirected_to post253_path(assigns(:post253))
  end

  test "should destroy post253" do
    assert_difference('Post253.count', -1) do
      delete :destroy, :id => @post253.to_param
    end

    assert_redirected_to post253s_path
  end
end
