require 'test_helper'

class Post291sControllerTest < ActionController::TestCase
  setup do
    @post291 = post291s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:post291s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post291" do
    assert_difference('Post291.count') do
      post :create, :post291 => @post291.attributes
    end

    assert_redirected_to post291_path(assigns(:post291))
  end

  test "should show post291" do
    get :show, :id => @post291.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @post291.to_param
    assert_response :success
  end

  test "should update post291" do
    put :update, :id => @post291.to_param, :post291 => @post291.attributes
    assert_redirected_to post291_path(assigns(:post291))
  end

  test "should destroy post291" do
    assert_difference('Post291.count', -1) do
      delete :destroy, :id => @post291.to_param
    end

    assert_redirected_to post291s_path
  end
end
