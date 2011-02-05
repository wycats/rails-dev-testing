require 'test_helper'

class Post204sControllerTest < ActionController::TestCase
  setup do
    @post204 = post204s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:post204s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post204" do
    assert_difference('Post204.count') do
      post :create, :post204 => @post204.attributes
    end

    assert_redirected_to post204_path(assigns(:post204))
  end

  test "should show post204" do
    get :show, :id => @post204.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @post204.to_param
    assert_response :success
  end

  test "should update post204" do
    put :update, :id => @post204.to_param, :post204 => @post204.attributes
    assert_redirected_to post204_path(assigns(:post204))
  end

  test "should destroy post204" do
    assert_difference('Post204.count', -1) do
      delete :destroy, :id => @post204.to_param
    end

    assert_redirected_to post204s_path
  end
end
