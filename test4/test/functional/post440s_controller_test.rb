require 'test_helper'

class Post440sControllerTest < ActionController::TestCase
  setup do
    @post440 = post440s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:post440s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post440" do
    assert_difference('Post440.count') do
      post :create, :post440 => @post440.attributes
    end

    assert_redirected_to post440_path(assigns(:post440))
  end

  test "should show post440" do
    get :show, :id => @post440.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @post440.to_param
    assert_response :success
  end

  test "should update post440" do
    put :update, :id => @post440.to_param, :post440 => @post440.attributes
    assert_redirected_to post440_path(assigns(:post440))
  end

  test "should destroy post440" do
    assert_difference('Post440.count', -1) do
      delete :destroy, :id => @post440.to_param
    end

    assert_redirected_to post440s_path
  end
end
