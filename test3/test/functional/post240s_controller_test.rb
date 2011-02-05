require 'test_helper'

class Post240sControllerTest < ActionController::TestCase
  setup do
    @post240 = post240s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:post240s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post240" do
    assert_difference('Post240.count') do
      post :create, :post240 => @post240.attributes
    end

    assert_redirected_to post240_path(assigns(:post240))
  end

  test "should show post240" do
    get :show, :id => @post240.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @post240.to_param
    assert_response :success
  end

  test "should update post240" do
    put :update, :id => @post240.to_param, :post240 => @post240.attributes
    assert_redirected_to post240_path(assigns(:post240))
  end

  test "should destroy post240" do
    assert_difference('Post240.count', -1) do
      delete :destroy, :id => @post240.to_param
    end

    assert_redirected_to post240s_path
  end
end
