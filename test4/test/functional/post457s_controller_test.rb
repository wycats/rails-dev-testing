require 'test_helper'

class Post457sControllerTest < ActionController::TestCase
  setup do
    @post457 = post457s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:post457s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post457" do
    assert_difference('Post457.count') do
      post :create, :post457 => @post457.attributes
    end

    assert_redirected_to post457_path(assigns(:post457))
  end

  test "should show post457" do
    get :show, :id => @post457.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @post457.to_param
    assert_response :success
  end

  test "should update post457" do
    put :update, :id => @post457.to_param, :post457 => @post457.attributes
    assert_redirected_to post457_path(assigns(:post457))
  end

  test "should destroy post457" do
    assert_difference('Post457.count', -1) do
      delete :destroy, :id => @post457.to_param
    end

    assert_redirected_to post457s_path
  end
end
