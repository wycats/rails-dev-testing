require 'test_helper'

class Post463sControllerTest < ActionController::TestCase
  setup do
    @post463 = post463s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:post463s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post463" do
    assert_difference('Post463.count') do
      post :create, :post463 => @post463.attributes
    end

    assert_redirected_to post463_path(assigns(:post463))
  end

  test "should show post463" do
    get :show, :id => @post463.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @post463.to_param
    assert_response :success
  end

  test "should update post463" do
    put :update, :id => @post463.to_param, :post463 => @post463.attributes
    assert_redirected_to post463_path(assigns(:post463))
  end

  test "should destroy post463" do
    assert_difference('Post463.count', -1) do
      delete :destroy, :id => @post463.to_param
    end

    assert_redirected_to post463s_path
  end
end
