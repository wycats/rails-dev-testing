require 'test_helper'

class Post123sControllerTest < ActionController::TestCase
  setup do
    @post123 = post123s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:post123s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post123" do
    assert_difference('Post123.count') do
      post :create, :post123 => @post123.attributes
    end

    assert_redirected_to post123_path(assigns(:post123))
  end

  test "should show post123" do
    get :show, :id => @post123.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @post123.to_param
    assert_response :success
  end

  test "should update post123" do
    put :update, :id => @post123.to_param, :post123 => @post123.attributes
    assert_redirected_to post123_path(assigns(:post123))
  end

  test "should destroy post123" do
    assert_difference('Post123.count', -1) do
      delete :destroy, :id => @post123.to_param
    end

    assert_redirected_to post123s_path
  end
end
