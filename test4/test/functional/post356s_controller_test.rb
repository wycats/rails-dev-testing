require 'test_helper'

class Post356sControllerTest < ActionController::TestCase
  setup do
    @post356 = post356s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:post356s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post356" do
    assert_difference('Post356.count') do
      post :create, :post356 => @post356.attributes
    end

    assert_redirected_to post356_path(assigns(:post356))
  end

  test "should show post356" do
    get :show, :id => @post356.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @post356.to_param
    assert_response :success
  end

  test "should update post356" do
    put :update, :id => @post356.to_param, :post356 => @post356.attributes
    assert_redirected_to post356_path(assigns(:post356))
  end

  test "should destroy post356" do
    assert_difference('Post356.count', -1) do
      delete :destroy, :id => @post356.to_param
    end

    assert_redirected_to post356s_path
  end
end
