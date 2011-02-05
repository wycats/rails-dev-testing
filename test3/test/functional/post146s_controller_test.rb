require 'test_helper'

class Post146sControllerTest < ActionController::TestCase
  setup do
    @post146 = post146s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:post146s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post146" do
    assert_difference('Post146.count') do
      post :create, :post146 => @post146.attributes
    end

    assert_redirected_to post146_path(assigns(:post146))
  end

  test "should show post146" do
    get :show, :id => @post146.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @post146.to_param
    assert_response :success
  end

  test "should update post146" do
    put :update, :id => @post146.to_param, :post146 => @post146.attributes
    assert_redirected_to post146_path(assigns(:post146))
  end

  test "should destroy post146" do
    assert_difference('Post146.count', -1) do
      delete :destroy, :id => @post146.to_param
    end

    assert_redirected_to post146s_path
  end
end
