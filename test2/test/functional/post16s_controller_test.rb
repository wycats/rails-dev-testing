require 'test_helper'

class Post16sControllerTest < ActionController::TestCase
  setup do
    @post16 = post16s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:post16s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post16" do
    assert_difference('Post16.count') do
      post :create, :post16 => @post16.attributes
    end

    assert_redirected_to post16_path(assigns(:post16))
  end

  test "should show post16" do
    get :show, :id => @post16.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @post16.to_param
    assert_response :success
  end

  test "should update post16" do
    put :update, :id => @post16.to_param, :post16 => @post16.attributes
    assert_redirected_to post16_path(assigns(:post16))
  end

  test "should destroy post16" do
    assert_difference('Post16.count', -1) do
      delete :destroy, :id => @post16.to_param
    end

    assert_redirected_to post16s_path
  end
end
