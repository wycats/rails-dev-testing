require 'test_helper'

class Post174sControllerTest < ActionController::TestCase
  setup do
    @post174 = post174s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:post174s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post174" do
    assert_difference('Post174.count') do
      post :create, :post174 => @post174.attributes
    end

    assert_redirected_to post174_path(assigns(:post174))
  end

  test "should show post174" do
    get :show, :id => @post174.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @post174.to_param
    assert_response :success
  end

  test "should update post174" do
    put :update, :id => @post174.to_param, :post174 => @post174.attributes
    assert_redirected_to post174_path(assigns(:post174))
  end

  test "should destroy post174" do
    assert_difference('Post174.count', -1) do
      delete :destroy, :id => @post174.to_param
    end

    assert_redirected_to post174s_path
  end
end
