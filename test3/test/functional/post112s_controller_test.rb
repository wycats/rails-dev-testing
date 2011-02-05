require 'test_helper'

class Post112sControllerTest < ActionController::TestCase
  setup do
    @post112 = post112s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:post112s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post112" do
    assert_difference('Post112.count') do
      post :create, :post112 => @post112.attributes
    end

    assert_redirected_to post112_path(assigns(:post112))
  end

  test "should show post112" do
    get :show, :id => @post112.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @post112.to_param
    assert_response :success
  end

  test "should update post112" do
    put :update, :id => @post112.to_param, :post112 => @post112.attributes
    assert_redirected_to post112_path(assigns(:post112))
  end

  test "should destroy post112" do
    assert_difference('Post112.count', -1) do
      delete :destroy, :id => @post112.to_param
    end

    assert_redirected_to post112s_path
  end
end
