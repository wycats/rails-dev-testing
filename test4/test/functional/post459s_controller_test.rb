require 'test_helper'

class Post459sControllerTest < ActionController::TestCase
  setup do
    @post459 = post459s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:post459s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post459" do
    assert_difference('Post459.count') do
      post :create, :post459 => @post459.attributes
    end

    assert_redirected_to post459_path(assigns(:post459))
  end

  test "should show post459" do
    get :show, :id => @post459.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @post459.to_param
    assert_response :success
  end

  test "should update post459" do
    put :update, :id => @post459.to_param, :post459 => @post459.attributes
    assert_redirected_to post459_path(assigns(:post459))
  end

  test "should destroy post459" do
    assert_difference('Post459.count', -1) do
      delete :destroy, :id => @post459.to_param
    end

    assert_redirected_to post459s_path
  end
end
