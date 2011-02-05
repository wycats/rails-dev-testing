require 'test_helper'

class Post436sControllerTest < ActionController::TestCase
  setup do
    @post436 = post436s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:post436s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post436" do
    assert_difference('Post436.count') do
      post :create, :post436 => @post436.attributes
    end

    assert_redirected_to post436_path(assigns(:post436))
  end

  test "should show post436" do
    get :show, :id => @post436.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @post436.to_param
    assert_response :success
  end

  test "should update post436" do
    put :update, :id => @post436.to_param, :post436 => @post436.attributes
    assert_redirected_to post436_path(assigns(:post436))
  end

  test "should destroy post436" do
    assert_difference('Post436.count', -1) do
      delete :destroy, :id => @post436.to_param
    end

    assert_redirected_to post436s_path
  end
end
