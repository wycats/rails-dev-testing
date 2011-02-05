require 'test_helper'

class Post365sControllerTest < ActionController::TestCase
  setup do
    @post365 = post365s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:post365s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post365" do
    assert_difference('Post365.count') do
      post :create, :post365 => @post365.attributes
    end

    assert_redirected_to post365_path(assigns(:post365))
  end

  test "should show post365" do
    get :show, :id => @post365.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @post365.to_param
    assert_response :success
  end

  test "should update post365" do
    put :update, :id => @post365.to_param, :post365 => @post365.attributes
    assert_redirected_to post365_path(assigns(:post365))
  end

  test "should destroy post365" do
    assert_difference('Post365.count', -1) do
      delete :destroy, :id => @post365.to_param
    end

    assert_redirected_to post365s_path
  end
end
