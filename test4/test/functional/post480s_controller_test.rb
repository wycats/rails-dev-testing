require 'test_helper'

class Post480sControllerTest < ActionController::TestCase
  setup do
    @post480 = post480s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:post480s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post480" do
    assert_difference('Post480.count') do
      post :create, :post480 => @post480.attributes
    end

    assert_redirected_to post480_path(assigns(:post480))
  end

  test "should show post480" do
    get :show, :id => @post480.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @post480.to_param
    assert_response :success
  end

  test "should update post480" do
    put :update, :id => @post480.to_param, :post480 => @post480.attributes
    assert_redirected_to post480_path(assigns(:post480))
  end

  test "should destroy post480" do
    assert_difference('Post480.count', -1) do
      delete :destroy, :id => @post480.to_param
    end

    assert_redirected_to post480s_path
  end
end
