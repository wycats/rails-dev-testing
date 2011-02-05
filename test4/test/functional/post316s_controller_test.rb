require 'test_helper'

class Post316sControllerTest < ActionController::TestCase
  setup do
    @post316 = post316s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:post316s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post316" do
    assert_difference('Post316.count') do
      post :create, :post316 => @post316.attributes
    end

    assert_redirected_to post316_path(assigns(:post316))
  end

  test "should show post316" do
    get :show, :id => @post316.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @post316.to_param
    assert_response :success
  end

  test "should update post316" do
    put :update, :id => @post316.to_param, :post316 => @post316.attributes
    assert_redirected_to post316_path(assigns(:post316))
  end

  test "should destroy post316" do
    assert_difference('Post316.count', -1) do
      delete :destroy, :id => @post316.to_param
    end

    assert_redirected_to post316s_path
  end
end
