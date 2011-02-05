require 'test_helper'

class Post49sControllerTest < ActionController::TestCase
  setup do
    @post49 = post49s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:post49s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post49" do
    assert_difference('Post49.count') do
      post :create, :post49 => @post49.attributes
    end

    assert_redirected_to post49_path(assigns(:post49))
  end

  test "should show post49" do
    get :show, :id => @post49.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @post49.to_param
    assert_response :success
  end

  test "should update post49" do
    put :update, :id => @post49.to_param, :post49 => @post49.attributes
    assert_redirected_to post49_path(assigns(:post49))
  end

  test "should destroy post49" do
    assert_difference('Post49.count', -1) do
      delete :destroy, :id => @post49.to_param
    end

    assert_redirected_to post49s_path
  end
end
