require 'test_helper'

class Post300sControllerTest < ActionController::TestCase
  setup do
    @post300 = post300s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:post300s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post300" do
    assert_difference('Post300.count') do
      post :create, :post300 => @post300.attributes
    end

    assert_redirected_to post300_path(assigns(:post300))
  end

  test "should show post300" do
    get :show, :id => @post300.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @post300.to_param
    assert_response :success
  end

  test "should update post300" do
    put :update, :id => @post300.to_param, :post300 => @post300.attributes
    assert_redirected_to post300_path(assigns(:post300))
  end

  test "should destroy post300" do
    assert_difference('Post300.count', -1) do
      delete :destroy, :id => @post300.to_param
    end

    assert_redirected_to post300s_path
  end
end
