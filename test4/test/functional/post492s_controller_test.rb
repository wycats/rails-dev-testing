require 'test_helper'

class Post492sControllerTest < ActionController::TestCase
  setup do
    @post492 = post492s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:post492s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post492" do
    assert_difference('Post492.count') do
      post :create, :post492 => @post492.attributes
    end

    assert_redirected_to post492_path(assigns(:post492))
  end

  test "should show post492" do
    get :show, :id => @post492.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @post492.to_param
    assert_response :success
  end

  test "should update post492" do
    put :update, :id => @post492.to_param, :post492 => @post492.attributes
    assert_redirected_to post492_path(assigns(:post492))
  end

  test "should destroy post492" do
    assert_difference('Post492.count', -1) do
      delete :destroy, :id => @post492.to_param
    end

    assert_redirected_to post492s_path
  end
end
