require 'test_helper'

class Post216sControllerTest < ActionController::TestCase
  setup do
    @post216 = post216s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:post216s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post216" do
    assert_difference('Post216.count') do
      post :create, :post216 => @post216.attributes
    end

    assert_redirected_to post216_path(assigns(:post216))
  end

  test "should show post216" do
    get :show, :id => @post216.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @post216.to_param
    assert_response :success
  end

  test "should update post216" do
    put :update, :id => @post216.to_param, :post216 => @post216.attributes
    assert_redirected_to post216_path(assigns(:post216))
  end

  test "should destroy post216" do
    assert_difference('Post216.count', -1) do
      delete :destroy, :id => @post216.to_param
    end

    assert_redirected_to post216s_path
  end
end
