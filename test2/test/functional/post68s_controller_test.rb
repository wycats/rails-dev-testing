require 'test_helper'

class Post68sControllerTest < ActionController::TestCase
  setup do
    @post68 = post68s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:post68s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post68" do
    assert_difference('Post68.count') do
      post :create, :post68 => @post68.attributes
    end

    assert_redirected_to post68_path(assigns(:post68))
  end

  test "should show post68" do
    get :show, :id => @post68.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @post68.to_param
    assert_response :success
  end

  test "should update post68" do
    put :update, :id => @post68.to_param, :post68 => @post68.attributes
    assert_redirected_to post68_path(assigns(:post68))
  end

  test "should destroy post68" do
    assert_difference('Post68.count', -1) do
      delete :destroy, :id => @post68.to_param
    end

    assert_redirected_to post68s_path
  end
end
