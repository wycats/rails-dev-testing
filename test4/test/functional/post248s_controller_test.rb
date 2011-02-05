require 'test_helper'

class Post248sControllerTest < ActionController::TestCase
  setup do
    @post248 = post248s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:post248s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post248" do
    assert_difference('Post248.count') do
      post :create, :post248 => @post248.attributes
    end

    assert_redirected_to post248_path(assigns(:post248))
  end

  test "should show post248" do
    get :show, :id => @post248.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @post248.to_param
    assert_response :success
  end

  test "should update post248" do
    put :update, :id => @post248.to_param, :post248 => @post248.attributes
    assert_redirected_to post248_path(assigns(:post248))
  end

  test "should destroy post248" do
    assert_difference('Post248.count', -1) do
      delete :destroy, :id => @post248.to_param
    end

    assert_redirected_to post248s_path
  end
end
