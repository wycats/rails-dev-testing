require 'test_helper'

class Post383sControllerTest < ActionController::TestCase
  setup do
    @post383 = post383s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:post383s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post383" do
    assert_difference('Post383.count') do
      post :create, :post383 => @post383.attributes
    end

    assert_redirected_to post383_path(assigns(:post383))
  end

  test "should show post383" do
    get :show, :id => @post383.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @post383.to_param
    assert_response :success
  end

  test "should update post383" do
    put :update, :id => @post383.to_param, :post383 => @post383.attributes
    assert_redirected_to post383_path(assigns(:post383))
  end

  test "should destroy post383" do
    assert_difference('Post383.count', -1) do
      delete :destroy, :id => @post383.to_param
    end

    assert_redirected_to post383s_path
  end
end
