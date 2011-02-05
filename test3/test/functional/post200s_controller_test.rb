require 'test_helper'

class Post200sControllerTest < ActionController::TestCase
  setup do
    @post200 = post200s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:post200s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post200" do
    assert_difference('Post200.count') do
      post :create, :post200 => @post200.attributes
    end

    assert_redirected_to post200_path(assigns(:post200))
  end

  test "should show post200" do
    get :show, :id => @post200.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @post200.to_param
    assert_response :success
  end

  test "should update post200" do
    put :update, :id => @post200.to_param, :post200 => @post200.attributes
    assert_redirected_to post200_path(assigns(:post200))
  end

  test "should destroy post200" do
    assert_difference('Post200.count', -1) do
      delete :destroy, :id => @post200.to_param
    end

    assert_redirected_to post200s_path
  end
end
