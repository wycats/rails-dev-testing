require 'test_helper'

class Post387sControllerTest < ActionController::TestCase
  setup do
    @post387 = post387s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:post387s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post387" do
    assert_difference('Post387.count') do
      post :create, :post387 => @post387.attributes
    end

    assert_redirected_to post387_path(assigns(:post387))
  end

  test "should show post387" do
    get :show, :id => @post387.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @post387.to_param
    assert_response :success
  end

  test "should update post387" do
    put :update, :id => @post387.to_param, :post387 => @post387.attributes
    assert_redirected_to post387_path(assigns(:post387))
  end

  test "should destroy post387" do
    assert_difference('Post387.count', -1) do
      delete :destroy, :id => @post387.to_param
    end

    assert_redirected_to post387s_path
  end
end
