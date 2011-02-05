require 'test_helper'

class Post257sControllerTest < ActionController::TestCase
  setup do
    @post257 = post257s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:post257s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post257" do
    assert_difference('Post257.count') do
      post :create, :post257 => @post257.attributes
    end

    assert_redirected_to post257_path(assigns(:post257))
  end

  test "should show post257" do
    get :show, :id => @post257.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @post257.to_param
    assert_response :success
  end

  test "should update post257" do
    put :update, :id => @post257.to_param, :post257 => @post257.attributes
    assert_redirected_to post257_path(assigns(:post257))
  end

  test "should destroy post257" do
    assert_difference('Post257.count', -1) do
      delete :destroy, :id => @post257.to_param
    end

    assert_redirected_to post257s_path
  end
end
