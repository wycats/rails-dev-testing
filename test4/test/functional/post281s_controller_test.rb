require 'test_helper'

class Post281sControllerTest < ActionController::TestCase
  setup do
    @post281 = post281s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:post281s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post281" do
    assert_difference('Post281.count') do
      post :create, :post281 => @post281.attributes
    end

    assert_redirected_to post281_path(assigns(:post281))
  end

  test "should show post281" do
    get :show, :id => @post281.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @post281.to_param
    assert_response :success
  end

  test "should update post281" do
    put :update, :id => @post281.to_param, :post281 => @post281.attributes
    assert_redirected_to post281_path(assigns(:post281))
  end

  test "should destroy post281" do
    assert_difference('Post281.count', -1) do
      delete :destroy, :id => @post281.to_param
    end

    assert_redirected_to post281s_path
  end
end
