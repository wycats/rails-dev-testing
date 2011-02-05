require 'test_helper'

class Post250sControllerTest < ActionController::TestCase
  setup do
    @post250 = post250s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:post250s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post250" do
    assert_difference('Post250.count') do
      post :create, :post250 => @post250.attributes
    end

    assert_redirected_to post250_path(assigns(:post250))
  end

  test "should show post250" do
    get :show, :id => @post250.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @post250.to_param
    assert_response :success
  end

  test "should update post250" do
    put :update, :id => @post250.to_param, :post250 => @post250.attributes
    assert_redirected_to post250_path(assigns(:post250))
  end

  test "should destroy post250" do
    assert_difference('Post250.count', -1) do
      delete :destroy, :id => @post250.to_param
    end

    assert_redirected_to post250s_path
  end
end
