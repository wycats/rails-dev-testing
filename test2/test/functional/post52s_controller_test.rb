require 'test_helper'

class Post52sControllerTest < ActionController::TestCase
  setup do
    @post52 = post52s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:post52s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post52" do
    assert_difference('Post52.count') do
      post :create, :post52 => @post52.attributes
    end

    assert_redirected_to post52_path(assigns(:post52))
  end

  test "should show post52" do
    get :show, :id => @post52.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @post52.to_param
    assert_response :success
  end

  test "should update post52" do
    put :update, :id => @post52.to_param, :post52 => @post52.attributes
    assert_redirected_to post52_path(assigns(:post52))
  end

  test "should destroy post52" do
    assert_difference('Post52.count', -1) do
      delete :destroy, :id => @post52.to_param
    end

    assert_redirected_to post52s_path
  end
end
