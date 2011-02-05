require 'test_helper'

class Post176sControllerTest < ActionController::TestCase
  setup do
    @post176 = post176s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:post176s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post176" do
    assert_difference('Post176.count') do
      post :create, :post176 => @post176.attributes
    end

    assert_redirected_to post176_path(assigns(:post176))
  end

  test "should show post176" do
    get :show, :id => @post176.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @post176.to_param
    assert_response :success
  end

  test "should update post176" do
    put :update, :id => @post176.to_param, :post176 => @post176.attributes
    assert_redirected_to post176_path(assigns(:post176))
  end

  test "should destroy post176" do
    assert_difference('Post176.count', -1) do
      delete :destroy, :id => @post176.to_param
    end

    assert_redirected_to post176s_path
  end
end
