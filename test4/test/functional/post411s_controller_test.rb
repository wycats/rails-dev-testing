require 'test_helper'

class Post411sControllerTest < ActionController::TestCase
  setup do
    @post411 = post411s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:post411s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post411" do
    assert_difference('Post411.count') do
      post :create, :post411 => @post411.attributes
    end

    assert_redirected_to post411_path(assigns(:post411))
  end

  test "should show post411" do
    get :show, :id => @post411.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @post411.to_param
    assert_response :success
  end

  test "should update post411" do
    put :update, :id => @post411.to_param, :post411 => @post411.attributes
    assert_redirected_to post411_path(assigns(:post411))
  end

  test "should destroy post411" do
    assert_difference('Post411.count', -1) do
      delete :destroy, :id => @post411.to_param
    end

    assert_redirected_to post411s_path
  end
end
