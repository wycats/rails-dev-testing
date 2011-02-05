require 'test_helper'

class Post264sControllerTest < ActionController::TestCase
  setup do
    @post264 = post264s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:post264s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post264" do
    assert_difference('Post264.count') do
      post :create, :post264 => @post264.attributes
    end

    assert_redirected_to post264_path(assigns(:post264))
  end

  test "should show post264" do
    get :show, :id => @post264.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @post264.to_param
    assert_response :success
  end

  test "should update post264" do
    put :update, :id => @post264.to_param, :post264 => @post264.attributes
    assert_redirected_to post264_path(assigns(:post264))
  end

  test "should destroy post264" do
    assert_difference('Post264.count', -1) do
      delete :destroy, :id => @post264.to_param
    end

    assert_redirected_to post264s_path
  end
end
