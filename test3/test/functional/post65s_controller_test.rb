require 'test_helper'

class Post65sControllerTest < ActionController::TestCase
  setup do
    @post65 = post65s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:post65s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post65" do
    assert_difference('Post65.count') do
      post :create, :post65 => @post65.attributes
    end

    assert_redirected_to post65_path(assigns(:post65))
  end

  test "should show post65" do
    get :show, :id => @post65.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @post65.to_param
    assert_response :success
  end

  test "should update post65" do
    put :update, :id => @post65.to_param, :post65 => @post65.attributes
    assert_redirected_to post65_path(assigns(:post65))
  end

  test "should destroy post65" do
    assert_difference('Post65.count', -1) do
      delete :destroy, :id => @post65.to_param
    end

    assert_redirected_to post65s_path
  end
end
