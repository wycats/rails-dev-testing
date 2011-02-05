require 'test_helper'

class Post406sControllerTest < ActionController::TestCase
  setup do
    @post406 = post406s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:post406s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post406" do
    assert_difference('Post406.count') do
      post :create, :post406 => @post406.attributes
    end

    assert_redirected_to post406_path(assigns(:post406))
  end

  test "should show post406" do
    get :show, :id => @post406.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @post406.to_param
    assert_response :success
  end

  test "should update post406" do
    put :update, :id => @post406.to_param, :post406 => @post406.attributes
    assert_redirected_to post406_path(assigns(:post406))
  end

  test "should destroy post406" do
    assert_difference('Post406.count', -1) do
      delete :destroy, :id => @post406.to_param
    end

    assert_redirected_to post406s_path
  end
end
