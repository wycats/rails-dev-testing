require 'test_helper'

class Post83sControllerTest < ActionController::TestCase
  setup do
    @post83 = post83s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:post83s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post83" do
    assert_difference('Post83.count') do
      post :create, :post83 => @post83.attributes
    end

    assert_redirected_to post83_path(assigns(:post83))
  end

  test "should show post83" do
    get :show, :id => @post83.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @post83.to_param
    assert_response :success
  end

  test "should update post83" do
    put :update, :id => @post83.to_param, :post83 => @post83.attributes
    assert_redirected_to post83_path(assigns(:post83))
  end

  test "should destroy post83" do
    assert_difference('Post83.count', -1) do
      delete :destroy, :id => @post83.to_param
    end

    assert_redirected_to post83s_path
  end
end
