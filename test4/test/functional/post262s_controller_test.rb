require 'test_helper'

class Post262sControllerTest < ActionController::TestCase
  setup do
    @post262 = post262s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:post262s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post262" do
    assert_difference('Post262.count') do
      post :create, :post262 => @post262.attributes
    end

    assert_redirected_to post262_path(assigns(:post262))
  end

  test "should show post262" do
    get :show, :id => @post262.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @post262.to_param
    assert_response :success
  end

  test "should update post262" do
    put :update, :id => @post262.to_param, :post262 => @post262.attributes
    assert_redirected_to post262_path(assigns(:post262))
  end

  test "should destroy post262" do
    assert_difference('Post262.count', -1) do
      delete :destroy, :id => @post262.to_param
    end

    assert_redirected_to post262s_path
  end
end
