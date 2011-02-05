require 'test_helper'

class Post138sControllerTest < ActionController::TestCase
  setup do
    @post138 = post138s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:post138s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post138" do
    assert_difference('Post138.count') do
      post :create, :post138 => @post138.attributes
    end

    assert_redirected_to post138_path(assigns(:post138))
  end

  test "should show post138" do
    get :show, :id => @post138.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @post138.to_param
    assert_response :success
  end

  test "should update post138" do
    put :update, :id => @post138.to_param, :post138 => @post138.attributes
    assert_redirected_to post138_path(assigns(:post138))
  end

  test "should destroy post138" do
    assert_difference('Post138.count', -1) do
      delete :destroy, :id => @post138.to_param
    end

    assert_redirected_to post138s_path
  end
end
