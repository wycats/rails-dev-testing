require 'test_helper'

class Post419sControllerTest < ActionController::TestCase
  setup do
    @post419 = post419s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:post419s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post419" do
    assert_difference('Post419.count') do
      post :create, :post419 => @post419.attributes
    end

    assert_redirected_to post419_path(assigns(:post419))
  end

  test "should show post419" do
    get :show, :id => @post419.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @post419.to_param
    assert_response :success
  end

  test "should update post419" do
    put :update, :id => @post419.to_param, :post419 => @post419.attributes
    assert_redirected_to post419_path(assigns(:post419))
  end

  test "should destroy post419" do
    assert_difference('Post419.count', -1) do
      delete :destroy, :id => @post419.to_param
    end

    assert_redirected_to post419s_path
  end
end
