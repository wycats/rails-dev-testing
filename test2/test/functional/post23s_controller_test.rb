require 'test_helper'

class Post23sControllerTest < ActionController::TestCase
  setup do
    @post23 = post23s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:post23s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post23" do
    assert_difference('Post23.count') do
      post :create, :post23 => @post23.attributes
    end

    assert_redirected_to post23_path(assigns(:post23))
  end

  test "should show post23" do
    get :show, :id => @post23.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @post23.to_param
    assert_response :success
  end

  test "should update post23" do
    put :update, :id => @post23.to_param, :post23 => @post23.attributes
    assert_redirected_to post23_path(assigns(:post23))
  end

  test "should destroy post23" do
    assert_difference('Post23.count', -1) do
      delete :destroy, :id => @post23.to_param
    end

    assert_redirected_to post23s_path
  end
end
