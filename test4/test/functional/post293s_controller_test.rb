require 'test_helper'

class Post293sControllerTest < ActionController::TestCase
  setup do
    @post293 = post293s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:post293s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post293" do
    assert_difference('Post293.count') do
      post :create, :post293 => @post293.attributes
    end

    assert_redirected_to post293_path(assigns(:post293))
  end

  test "should show post293" do
    get :show, :id => @post293.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @post293.to_param
    assert_response :success
  end

  test "should update post293" do
    put :update, :id => @post293.to_param, :post293 => @post293.attributes
    assert_redirected_to post293_path(assigns(:post293))
  end

  test "should destroy post293" do
    assert_difference('Post293.count', -1) do
      delete :destroy, :id => @post293.to_param
    end

    assert_redirected_to post293s_path
  end
end
