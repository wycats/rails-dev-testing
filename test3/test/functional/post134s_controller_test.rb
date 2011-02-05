require 'test_helper'

class Post134sControllerTest < ActionController::TestCase
  setup do
    @post134 = post134s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:post134s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post134" do
    assert_difference('Post134.count') do
      post :create, :post134 => @post134.attributes
    end

    assert_redirected_to post134_path(assigns(:post134))
  end

  test "should show post134" do
    get :show, :id => @post134.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @post134.to_param
    assert_response :success
  end

  test "should update post134" do
    put :update, :id => @post134.to_param, :post134 => @post134.attributes
    assert_redirected_to post134_path(assigns(:post134))
  end

  test "should destroy post134" do
    assert_difference('Post134.count', -1) do
      delete :destroy, :id => @post134.to_param
    end

    assert_redirected_to post134s_path
  end
end
