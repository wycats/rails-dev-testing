require 'test_helper'

class Post154sControllerTest < ActionController::TestCase
  setup do
    @post154 = post154s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:post154s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post154" do
    assert_difference('Post154.count') do
      post :create, :post154 => @post154.attributes
    end

    assert_redirected_to post154_path(assigns(:post154))
  end

  test "should show post154" do
    get :show, :id => @post154.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @post154.to_param
    assert_response :success
  end

  test "should update post154" do
    put :update, :id => @post154.to_param, :post154 => @post154.attributes
    assert_redirected_to post154_path(assigns(:post154))
  end

  test "should destroy post154" do
    assert_difference('Post154.count', -1) do
      delete :destroy, :id => @post154.to_param
    end

    assert_redirected_to post154s_path
  end
end
