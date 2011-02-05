require 'test_helper'

class Post284sControllerTest < ActionController::TestCase
  setup do
    @post284 = post284s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:post284s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post284" do
    assert_difference('Post284.count') do
      post :create, :post284 => @post284.attributes
    end

    assert_redirected_to post284_path(assigns(:post284))
  end

  test "should show post284" do
    get :show, :id => @post284.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @post284.to_param
    assert_response :success
  end

  test "should update post284" do
    put :update, :id => @post284.to_param, :post284 => @post284.attributes
    assert_redirected_to post284_path(assigns(:post284))
  end

  test "should destroy post284" do
    assert_difference('Post284.count', -1) do
      delete :destroy, :id => @post284.to_param
    end

    assert_redirected_to post284s_path
  end
end
