require 'test_helper'

class Post397sControllerTest < ActionController::TestCase
  setup do
    @post397 = post397s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:post397s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post397" do
    assert_difference('Post397.count') do
      post :create, :post397 => @post397.attributes
    end

    assert_redirected_to post397_path(assigns(:post397))
  end

  test "should show post397" do
    get :show, :id => @post397.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @post397.to_param
    assert_response :success
  end

  test "should update post397" do
    put :update, :id => @post397.to_param, :post397 => @post397.attributes
    assert_redirected_to post397_path(assigns(:post397))
  end

  test "should destroy post397" do
    assert_difference('Post397.count', -1) do
      delete :destroy, :id => @post397.to_param
    end

    assert_redirected_to post397s_path
  end
end
