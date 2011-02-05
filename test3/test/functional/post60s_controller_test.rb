require 'test_helper'

class Post60sControllerTest < ActionController::TestCase
  setup do
    @post60 = post60s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:post60s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post60" do
    assert_difference('Post60.count') do
      post :create, :post60 => @post60.attributes
    end

    assert_redirected_to post60_path(assigns(:post60))
  end

  test "should show post60" do
    get :show, :id => @post60.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @post60.to_param
    assert_response :success
  end

  test "should update post60" do
    put :update, :id => @post60.to_param, :post60 => @post60.attributes
    assert_redirected_to post60_path(assigns(:post60))
  end

  test "should destroy post60" do
    assert_difference('Post60.count', -1) do
      delete :destroy, :id => @post60.to_param
    end

    assert_redirected_to post60s_path
  end
end
