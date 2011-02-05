require 'test_helper'

class Post29sControllerTest < ActionController::TestCase
  setup do
    @post29 = post29s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:post29s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post29" do
    assert_difference('Post29.count') do
      post :create, :post29 => @post29.attributes
    end

    assert_redirected_to post29_path(assigns(:post29))
  end

  test "should show post29" do
    get :show, :id => @post29.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @post29.to_param
    assert_response :success
  end

  test "should update post29" do
    put :update, :id => @post29.to_param, :post29 => @post29.attributes
    assert_redirected_to post29_path(assigns(:post29))
  end

  test "should destroy post29" do
    assert_difference('Post29.count', -1) do
      delete :destroy, :id => @post29.to_param
    end

    assert_redirected_to post29s_path
  end
end
