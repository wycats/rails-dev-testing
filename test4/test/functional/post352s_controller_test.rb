require 'test_helper'

class Post352sControllerTest < ActionController::TestCase
  setup do
    @post352 = post352s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:post352s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post352" do
    assert_difference('Post352.count') do
      post :create, :post352 => @post352.attributes
    end

    assert_redirected_to post352_path(assigns(:post352))
  end

  test "should show post352" do
    get :show, :id => @post352.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @post352.to_param
    assert_response :success
  end

  test "should update post352" do
    put :update, :id => @post352.to_param, :post352 => @post352.attributes
    assert_redirected_to post352_path(assigns(:post352))
  end

  test "should destroy post352" do
    assert_difference('Post352.count', -1) do
      delete :destroy, :id => @post352.to_param
    end

    assert_redirected_to post352s_path
  end
end
