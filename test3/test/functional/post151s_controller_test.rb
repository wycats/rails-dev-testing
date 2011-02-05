require 'test_helper'

class Post151sControllerTest < ActionController::TestCase
  setup do
    @post151 = post151s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:post151s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post151" do
    assert_difference('Post151.count') do
      post :create, :post151 => @post151.attributes
    end

    assert_redirected_to post151_path(assigns(:post151))
  end

  test "should show post151" do
    get :show, :id => @post151.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @post151.to_param
    assert_response :success
  end

  test "should update post151" do
    put :update, :id => @post151.to_param, :post151 => @post151.attributes
    assert_redirected_to post151_path(assigns(:post151))
  end

  test "should destroy post151" do
    assert_difference('Post151.count', -1) do
      delete :destroy, :id => @post151.to_param
    end

    assert_redirected_to post151s_path
  end
end
