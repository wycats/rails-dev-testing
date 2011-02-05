require 'test_helper'

class Post225sControllerTest < ActionController::TestCase
  setup do
    @post225 = post225s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:post225s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post225" do
    assert_difference('Post225.count') do
      post :create, :post225 => @post225.attributes
    end

    assert_redirected_to post225_path(assigns(:post225))
  end

  test "should show post225" do
    get :show, :id => @post225.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @post225.to_param
    assert_response :success
  end

  test "should update post225" do
    put :update, :id => @post225.to_param, :post225 => @post225.attributes
    assert_redirected_to post225_path(assigns(:post225))
  end

  test "should destroy post225" do
    assert_difference('Post225.count', -1) do
      delete :destroy, :id => @post225.to_param
    end

    assert_redirected_to post225s_path
  end
end
