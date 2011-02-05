require 'test_helper'

class Post215sControllerTest < ActionController::TestCase
  setup do
    @post215 = post215s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:post215s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post215" do
    assert_difference('Post215.count') do
      post :create, :post215 => @post215.attributes
    end

    assert_redirected_to post215_path(assigns(:post215))
  end

  test "should show post215" do
    get :show, :id => @post215.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @post215.to_param
    assert_response :success
  end

  test "should update post215" do
    put :update, :id => @post215.to_param, :post215 => @post215.attributes
    assert_redirected_to post215_path(assigns(:post215))
  end

  test "should destroy post215" do
    assert_difference('Post215.count', -1) do
      delete :destroy, :id => @post215.to_param
    end

    assert_redirected_to post215s_path
  end
end
