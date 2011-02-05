require 'test_helper'

class Post424sControllerTest < ActionController::TestCase
  setup do
    @post424 = post424s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:post424s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post424" do
    assert_difference('Post424.count') do
      post :create, :post424 => @post424.attributes
    end

    assert_redirected_to post424_path(assigns(:post424))
  end

  test "should show post424" do
    get :show, :id => @post424.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @post424.to_param
    assert_response :success
  end

  test "should update post424" do
    put :update, :id => @post424.to_param, :post424 => @post424.attributes
    assert_redirected_to post424_path(assigns(:post424))
  end

  test "should destroy post424" do
    assert_difference('Post424.count', -1) do
      delete :destroy, :id => @post424.to_param
    end

    assert_redirected_to post424s_path
  end
end
