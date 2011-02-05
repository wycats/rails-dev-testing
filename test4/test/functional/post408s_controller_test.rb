require 'test_helper'

class Post408sControllerTest < ActionController::TestCase
  setup do
    @post408 = post408s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:post408s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post408" do
    assert_difference('Post408.count') do
      post :create, :post408 => @post408.attributes
    end

    assert_redirected_to post408_path(assigns(:post408))
  end

  test "should show post408" do
    get :show, :id => @post408.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @post408.to_param
    assert_response :success
  end

  test "should update post408" do
    put :update, :id => @post408.to_param, :post408 => @post408.attributes
    assert_redirected_to post408_path(assigns(:post408))
  end

  test "should destroy post408" do
    assert_difference('Post408.count', -1) do
      delete :destroy, :id => @post408.to_param
    end

    assert_redirected_to post408s_path
  end
end
