require 'test_helper'

class Post297sControllerTest < ActionController::TestCase
  setup do
    @post297 = post297s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:post297s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post297" do
    assert_difference('Post297.count') do
      post :create, :post297 => @post297.attributes
    end

    assert_redirected_to post297_path(assigns(:post297))
  end

  test "should show post297" do
    get :show, :id => @post297.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @post297.to_param
    assert_response :success
  end

  test "should update post297" do
    put :update, :id => @post297.to_param, :post297 => @post297.attributes
    assert_redirected_to post297_path(assigns(:post297))
  end

  test "should destroy post297" do
    assert_difference('Post297.count', -1) do
      delete :destroy, :id => @post297.to_param
    end

    assert_redirected_to post297s_path
  end
end
