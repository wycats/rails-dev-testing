require 'test_helper'

class Post380sControllerTest < ActionController::TestCase
  setup do
    @post380 = post380s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:post380s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post380" do
    assert_difference('Post380.count') do
      post :create, :post380 => @post380.attributes
    end

    assert_redirected_to post380_path(assigns(:post380))
  end

  test "should show post380" do
    get :show, :id => @post380.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @post380.to_param
    assert_response :success
  end

  test "should update post380" do
    put :update, :id => @post380.to_param, :post380 => @post380.attributes
    assert_redirected_to post380_path(assigns(:post380))
  end

  test "should destroy post380" do
    assert_difference('Post380.count', -1) do
      delete :destroy, :id => @post380.to_param
    end

    assert_redirected_to post380s_path
  end
end
