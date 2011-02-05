require 'test_helper'

class Post455sControllerTest < ActionController::TestCase
  setup do
    @post455 = post455s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:post455s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post455" do
    assert_difference('Post455.count') do
      post :create, :post455 => @post455.attributes
    end

    assert_redirected_to post455_path(assigns(:post455))
  end

  test "should show post455" do
    get :show, :id => @post455.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @post455.to_param
    assert_response :success
  end

  test "should update post455" do
    put :update, :id => @post455.to_param, :post455 => @post455.attributes
    assert_redirected_to post455_path(assigns(:post455))
  end

  test "should destroy post455" do
    assert_difference('Post455.count', -1) do
      delete :destroy, :id => @post455.to_param
    end

    assert_redirected_to post455s_path
  end
end
