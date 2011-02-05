require 'test_helper'

class Post468sControllerTest < ActionController::TestCase
  setup do
    @post468 = post468s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:post468s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post468" do
    assert_difference('Post468.count') do
      post :create, :post468 => @post468.attributes
    end

    assert_redirected_to post468_path(assigns(:post468))
  end

  test "should show post468" do
    get :show, :id => @post468.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @post468.to_param
    assert_response :success
  end

  test "should update post468" do
    put :update, :id => @post468.to_param, :post468 => @post468.attributes
    assert_redirected_to post468_path(assigns(:post468))
  end

  test "should destroy post468" do
    assert_difference('Post468.count', -1) do
      delete :destroy, :id => @post468.to_param
    end

    assert_redirected_to post468s_path
  end
end
