require 'test_helper'

class Post230sControllerTest < ActionController::TestCase
  setup do
    @post230 = post230s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:post230s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post230" do
    assert_difference('Post230.count') do
      post :create, :post230 => @post230.attributes
    end

    assert_redirected_to post230_path(assigns(:post230))
  end

  test "should show post230" do
    get :show, :id => @post230.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @post230.to_param
    assert_response :success
  end

  test "should update post230" do
    put :update, :id => @post230.to_param, :post230 => @post230.attributes
    assert_redirected_to post230_path(assigns(:post230))
  end

  test "should destroy post230" do
    assert_difference('Post230.count', -1) do
      delete :destroy, :id => @post230.to_param
    end

    assert_redirected_to post230s_path
  end
end
