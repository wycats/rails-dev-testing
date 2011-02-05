require 'test_helper'

class Post481sControllerTest < ActionController::TestCase
  setup do
    @post481 = post481s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:post481s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post481" do
    assert_difference('Post481.count') do
      post :create, :post481 => @post481.attributes
    end

    assert_redirected_to post481_path(assigns(:post481))
  end

  test "should show post481" do
    get :show, :id => @post481.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @post481.to_param
    assert_response :success
  end

  test "should update post481" do
    put :update, :id => @post481.to_param, :post481 => @post481.attributes
    assert_redirected_to post481_path(assigns(:post481))
  end

  test "should destroy post481" do
    assert_difference('Post481.count', -1) do
      delete :destroy, :id => @post481.to_param
    end

    assert_redirected_to post481s_path
  end
end
