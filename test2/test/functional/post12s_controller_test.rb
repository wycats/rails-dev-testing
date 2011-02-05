require 'test_helper'

class Post12sControllerTest < ActionController::TestCase
  setup do
    @post12 = post12s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:post12s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post12" do
    assert_difference('Post12.count') do
      post :create, :post12 => @post12.attributes
    end

    assert_redirected_to post12_path(assigns(:post12))
  end

  test "should show post12" do
    get :show, :id => @post12.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @post12.to_param
    assert_response :success
  end

  test "should update post12" do
    put :update, :id => @post12.to_param, :post12 => @post12.attributes
    assert_redirected_to post12_path(assigns(:post12))
  end

  test "should destroy post12" do
    assert_difference('Post12.count', -1) do
      delete :destroy, :id => @post12.to_param
    end

    assert_redirected_to post12s_path
  end
end
