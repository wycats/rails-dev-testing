require 'test_helper'

class Post155sControllerTest < ActionController::TestCase
  setup do
    @post155 = post155s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:post155s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post155" do
    assert_difference('Post155.count') do
      post :create, :post155 => @post155.attributes
    end

    assert_redirected_to post155_path(assigns(:post155))
  end

  test "should show post155" do
    get :show, :id => @post155.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @post155.to_param
    assert_response :success
  end

  test "should update post155" do
    put :update, :id => @post155.to_param, :post155 => @post155.attributes
    assert_redirected_to post155_path(assigns(:post155))
  end

  test "should destroy post155" do
    assert_difference('Post155.count', -1) do
      delete :destroy, :id => @post155.to_param
    end

    assert_redirected_to post155s_path
  end
end
