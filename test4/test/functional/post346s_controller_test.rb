require 'test_helper'

class Post346sControllerTest < ActionController::TestCase
  setup do
    @post346 = post346s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:post346s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post346" do
    assert_difference('Post346.count') do
      post :create, :post346 => @post346.attributes
    end

    assert_redirected_to post346_path(assigns(:post346))
  end

  test "should show post346" do
    get :show, :id => @post346.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @post346.to_param
    assert_response :success
  end

  test "should update post346" do
    put :update, :id => @post346.to_param, :post346 => @post346.attributes
    assert_redirected_to post346_path(assigns(:post346))
  end

  test "should destroy post346" do
    assert_difference('Post346.count', -1) do
      delete :destroy, :id => @post346.to_param
    end

    assert_redirected_to post346s_path
  end
end
