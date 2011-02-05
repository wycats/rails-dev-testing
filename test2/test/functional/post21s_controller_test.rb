require 'test_helper'

class Post21sControllerTest < ActionController::TestCase
  setup do
    @post21 = post21s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:post21s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post21" do
    assert_difference('Post21.count') do
      post :create, :post21 => @post21.attributes
    end

    assert_redirected_to post21_path(assigns(:post21))
  end

  test "should show post21" do
    get :show, :id => @post21.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @post21.to_param
    assert_response :success
  end

  test "should update post21" do
    put :update, :id => @post21.to_param, :post21 => @post21.attributes
    assert_redirected_to post21_path(assigns(:post21))
  end

  test "should destroy post21" do
    assert_difference('Post21.count', -1) do
      delete :destroy, :id => @post21.to_param
    end

    assert_redirected_to post21s_path
  end
end
