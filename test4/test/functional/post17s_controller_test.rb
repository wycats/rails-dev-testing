require 'test_helper'

class Post17sControllerTest < ActionController::TestCase
  setup do
    @post17 = post17s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:post17s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post17" do
    assert_difference('Post17.count') do
      post :create, :post17 => @post17.attributes
    end

    assert_redirected_to post17_path(assigns(:post17))
  end

  test "should show post17" do
    get :show, :id => @post17.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @post17.to_param
    assert_response :success
  end

  test "should update post17" do
    put :update, :id => @post17.to_param, :post17 => @post17.attributes
    assert_redirected_to post17_path(assigns(:post17))
  end

  test "should destroy post17" do
    assert_difference('Post17.count', -1) do
      delete :destroy, :id => @post17.to_param
    end

    assert_redirected_to post17s_path
  end
end
