require 'test_helper'

class Post472sControllerTest < ActionController::TestCase
  setup do
    @post472 = post472s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:post472s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post472" do
    assert_difference('Post472.count') do
      post :create, :post472 => @post472.attributes
    end

    assert_redirected_to post472_path(assigns(:post472))
  end

  test "should show post472" do
    get :show, :id => @post472.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @post472.to_param
    assert_response :success
  end

  test "should update post472" do
    put :update, :id => @post472.to_param, :post472 => @post472.attributes
    assert_redirected_to post472_path(assigns(:post472))
  end

  test "should destroy post472" do
    assert_difference('Post472.count', -1) do
      delete :destroy, :id => @post472.to_param
    end

    assert_redirected_to post472s_path
  end
end
